import 'dart:io';
import '_log.dart';
import 'package:path/path.dart' as p;

final packageRoot = File(Platform.script.toFilePath()).parent.parent;
final sourceDir = Directory(p.join(packageRoot.path, 'source'));
final raylibSrc = Directory(p.join(sourceDir.path, 'raylib'));
final rayguiSrc = Directory(p.join(sourceDir.path, 'raygui'));

Future<void> main(List<String> args) async {
  logBanner('raylib_dartified_web / SETUP');

  _checkEnv();

  await _cloneRaylib();
  await _cloneRaygui();
  await _buildRaylibForWasm();

  logOk('Setup complete.');
  logInfo('You can now run:  dart run raylib_dartified_web:build --entry=<entry.dart>');
}

void _checkEnv() {
  logStep('Checking environment');

  logRequireEnv('EMSDK', () => logDie(
    'EMSDK environment variable is not set.\n'
    '  Install emscripten: https://emscripten.org/docs/getting_started/downloads.html\n'
    '  Then activate and source it:\n'
    '    ./emsdk install latest\n'
    '    ./emsdk activate latest\n'
    '${_emsdkSourceHint()}',
  ));

  logRequireTool('git');
  logRequireTool('cmake');
  logRequireTool('emcc');
}

String _emsdkSourceHint() {
  if (Platform.isWindows) {
    return '    cmd:        .\\emsdk_env.bat\n'
           '    powershell: .\\emsdk_env.bat';
  }
  return '    source ./emsdk_env.sh';
}

Future<void> _cloneRaylib() async {
  logStep('Raylib 5.5');
  if (raylibSrc.existsSync()) {
    logOk('Already present, skipping clone.');
    return;
  }
  await logRun('git', [
    'clone',
    '--depth', '1',
    '--branch', '5.5',
    'https://github.com/raysan5/raylib.git',
    raylibSrc.path,
  ]);
}

Future<void> _cloneRaygui() async {
  logStep('Raygui');
  if (rayguiSrc.existsSync()) {
    logOk('Already present, skipping clone.');
    return;
  }
  await logRun('git', [
    'clone',
    '--depth', '1',
    'https://github.com/raysan5/raygui.git',
    rayguiSrc.path,
  ]);
}

Future<void> _buildRaylibForWasm() async {
  logStep('Building raylib for WASM (emscripten)');

  final buildDir = Directory(p.join(raylibSrc.path, 'build'));
  final innerBuildDir = Directory(p.join(buildDir.path, 'build'));

  if (innerBuildDir.existsSync()) {
    logInfo('Cleaning previous build…');
    innerBuildDir.deleteSync(recursive: true);
  }
  buildDir.createSync(recursive: true);

  final emsdk = Platform.environment['EMSDK']!;
  // emcc cmake toolchain file expects forward slashes on all platforms
  final toolchainFile = p.join(
    emsdk, 'upstream', 'emscripten', 'cmake', 'Modules', 'Platform', 'Emscripten.cmake',
  ).replaceAll(r'\', '/');

  await logRun('cmake', [
    '..',
    '-B', 'build',
    '-DCMAKE_TOOLCHAIN_FILE=$toolchainFile',
    '-DBUILD_SHARED_LIBS=ON',
    '-DCMAKE_BUILD_TYPE=Debug',
    '-DPLATFORM=Web',
    '-DBUILD_EXAMPLES=OFF',
    '-DGRAPHICS=GRAPHICS_API_OPENGL_ES3',
    '-DCMAKE_C_FLAGS=-DGRAPHICS_API_OPENGL_ES2 -DGRAPHICS_API_OPENGL_ES3',
  ], workingDirectory: buildDir.path);

  await logRun('cmake', [
    '--build', 'build',
    '-j${Platform.numberOfProcessors}',
  ], workingDirectory: buildDir.path);

  final rLightsPath = File(p.join(raylibSrc.path, 'examples', 'models', 'rlights.h'));
  if (rLightsPath.existsSync()) {
    rLightsPath.copySync(p.join(raylibSrc.path, 'src', 'rlights.h'));
  } else {
    logWarn('rlights.h not found: ${rLightsPath.path}');
  }

  logOk('${innerBuildDir.path}${p.separator}raylib${p.separator}');
}