import 'dart:io';
import '_log.dart';
import 'package:args/args.dart';
import 'package:path/path.dart' as p;
import 'assets/html_index.dart' as html_index show template;
import 'assets/raylib_func_list.dart' as raylib_func_list show template;
import 'assets/raylib_c.dart' as raylib_c show template;

final cwd = Directory.current;
final buildDir = Directory(p.join(cwd.path, 'build'));
final packageRoot = File(Platform.script.toFilePath()).parent.parent;
final sourceDir = Directory(p.join(packageRoot.path, 'source'));

final _builtinRaylibC = File(p.join(packageRoot.path, 'raylib.c'));
final _builtinFuncList = File(p.join(packageRoot.path, 'raylib_func_list.txt'));

const String FLAG_HELP = 'help';
const String OPT_ENTRY = 'entry';
const String OPT_RAYLIB_C = 'raylib-c';
const String OPT_RAYLIB_FUNC_LIST = 'raylib-func-list';
const String OPT_RESOURCES = 'raylib-resources';

ArgParser setupParser(List<String> args) {
  final parser = ArgParser(allowTrailingOptions: true);

  parser.addFlag(FLAG_HELP, abbr: 'h', help: 'Displays the usage of this tool.', hideNegatedUsage: true);
  parser.addOption(OPT_ENTRY, valueHelp: 'path', help: 'Path to dart file to compile', mandatory: true);

  parser.addSeparator('OPTIONS');

  parser.addOption(OPT_RAYLIB_C, valueHelp: 'path', help: 'Path to custom raylib.c (default: package builtin)');
  parser.addOption(OPT_RAYLIB_FUNC_LIST, valueHelp: 'path', help: 'Path to custom raylib function list file (default: package builtin)');
  parser.addOption(OPT_RESOURCES, valueHelp: 'path', help: 'Path to resources/ directory (default: ./resources)');

  return parser;
}

Future<void> main(List<String> args) async {
  final parser = setupParser(args);

  logBanner('raylib_dartified_web / BUILD');

  final parsedArgs = parser.parse(args);

  if (args.isEmpty || parsedArgs.flag(FLAG_HELP)) {
    print(parser.usage);
    exit(1);
  }

  final entryPoint = File(parsedArgs.option(OPT_ENTRY)!);
  if (!entryPoint.existsSync()) {
    logDie('Entry point not found: ${parsedArgs.option(OPT_ENTRY)}');
  }

  File? raylibC;
  File? raylibFuncList;
  Directory? resourcesDir;

  final raylibCPath = parsedArgs.option(OPT_RAYLIB_C);
  if (raylibCPath != null) {
    raylibC = File(raylibCPath);
    if (!raylibC.existsSync()) logDie('$raylibCPath is not a valid raylib.c path');
  }

  final raylibFuncListPath = parsedArgs.option(OPT_RAYLIB_FUNC_LIST);
  if (raylibFuncListPath != null) {
    raylibFuncList = File(raylibFuncListPath);
    if (!raylibFuncList.existsSync()) logDie('$raylibFuncListPath is not a valid function list path');
  }

  final resourcesDirPath = parsedArgs.option(OPT_RESOURCES);
  if (resourcesDirPath != null) {
    resourcesDir = Directory(resourcesDirPath);
    if (!resourcesDir.existsSync()) logDie('$resourcesDirPath is not a valid resources/ path');
  }

  if (raylibC == null) _builtinRaylibC.writeAsStringSync(raylib_c.template);
  if (raylibFuncList == null) _builtinFuncList.writeAsStringSync(raylib_func_list.template);

  _checkEnv();
  _checkSetupDone();
  await _prepareBuildDir();

  await _emccLink(
    raylibC: raylibC ?? _builtinRaylibC,
    raylibFuncList: raylibFuncList ?? _builtinFuncList,
    resourcesDir: resourcesDir ?? Directory(p.join(cwd.path, 'resources')),
    buildDir: buildDir,
  );

  if (raylibC == null) _builtinRaylibC.deleteSync();
  if (raylibFuncList == null) _builtinFuncList.deleteSync();

  await _dartCompile(entryPoint: entryPoint, buildDir: buildDir);

  _buildHtmlTemplate(buildDir: buildDir);

  final originalRaylibHTML = File(p.join(buildDir.path, 'raylib.html'));
  if (originalRaylibHTML.existsSync()) {
    originalRaylibHTML.deleteSync();
  }

  logOk('Build complete: ${buildDir.path}${p.separator}');
}

void _checkEnv() {
  logStep('Checking environment');

  logRequireEnv('EMSDK', () => logDie(
    'EMSDK environment variable is not set.\n'
    '  Source emscripten first:\n'
    '${_emsdkSourceHint()}',
  ));
  logRequireTool('emcc');
  logRequireTool('dart');
}

String _emsdkSourceHint() {
  if (Platform.isWindows) {
    return '    cmd:        %EMSDK%\\emsdk_env.bat\n'
           '    powershell: & "\$env:EMSDK\\emsdk_env.bat"';
  }
  return '    source \$EMSDK/emsdk_env.sh';
}

void _checkSetupDone() {
  logStep('Checking raylib build');

  final raylibLib = Directory(
    p.join(sourceDir.path, 'raylib', 'build', 'build', 'raylib'),
  );

  if (!raylibLib.existsSync()) {
    logDie(
      'raylib does not appear to be built yet.\n'
      '  Run setup first:  dart run raylib_dartified_web:setup',
    );
  }

  logOk(raylibLib.path);
}

Future<void> _prepareBuildDir() async {
  logStep('Preparing build/ directory');
  buildDir.createSync(recursive: true);
  logOk(buildDir.path);
}

Future<void> _emccLink({
  required File raylibC,
  required Directory resourcesDir,
  File? raylibFuncList,
  required Directory buildDir,
}) async {
  logStep('Linking with emcc');

  final raylibInclude = p.join(sourceDir.path, 'raylib', 'src');
  final raylibLibDir = p.join(sourceDir.path, 'raylib', 'build', 'build', 'raylib');
  final rayguiInclude = p.join(sourceDir.path, 'raygui', 'src');

  final hasResources = resourcesDir.existsSync();
  if (!hasResources) {
    logWarn('resources/ not found, skipping --preload-file');
  }

  if (raylibFuncList == null) {
    logWarn('raylib_func_list.txt not found, skipping EXPORTED_FUNCTIONS');
  }

  final outputHtml = p.join(buildDir.path, 'raylib.html');

  // emcc expects forward slashes on all platforms
  String toEmccPath(String path) => path.replaceAll(r'\', '/');

  final emccArgs = [
    raylibC.path,
    '-I${toEmccPath(raylibInclude)}',
    '-L${toEmccPath(raylibLibDir)}', '-lraylib',
    '-I${toEmccPath(rayguiInclude)}',
    '-s', 'STACK_SIZE=1048576',
    '-s', 'USE_GLFW=3',
    '-s', 'ALLOW_MEMORY_GROWTH=1',
    '-s', 'ALLOW_TABLE_GROWTH=1',
    '-s', 'FULL_ES3=1',
    '-s', 'MAX_WEBGL_VERSION=2',
    '-s', 'MIN_WEBGL_VERSION=2',
    if (raylibFuncList != null) ...['-s', 'EXPORTED_FUNCTIONS=@${toEmccPath(raylibFuncList.path)}'],
    if (hasResources) ...['--preload-file', '${toEmccPath(resourcesDir.path)}@/resources'],
    '-s', "EXPORTED_RUNTIME_METHODS=["
      '"wasmExports","wasmTable","cwrap","ccall",'
      '"UTF8ToString","stringToUTF8","lengthBytesUTF8",'
      '"addFunction","removeFunction",'
      '"HEAP8","HEAPU8","HEAP16","HEAPU16",'
      '"HEAP32","HEAPU32","HEAP64","HEAPU64",'
      '"HEAPF32","HEAPF64"'
    ']',
    '-o', outputHtml,
  ];

  await logRun('emcc', emccArgs);
}

Future<void> _dartCompile({
  required File entryPoint,
  required Directory buildDir,
}) async {
  logStep('Compiling Dart to JS');

  final outputJs = p.join(buildDir.path, 'main.js');
  await logRun('dart', ['compile', 'js', entryPoint.path, '-o', outputJs]);
}

void _buildHtmlTemplate({required Directory buildDir}) {
  logStep('Building HTML template');

  final index = File(p.join(buildDir.path, 'index.html'));
  index.writeAsStringSync(html_index.template);
  logInfo('Built ${index.path}');
}