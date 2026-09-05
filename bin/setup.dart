import 'dart:io';
import '_log.dart';
import '_paths.dart';
import 'package:path/path.dart' as p;

const _defaultRaylibVersion = '5.5';
const _supportedRaylibVersions = ['5.5', '6.0'];

/// Matches raylib config.h-style defines, e.g. SUPPORT_FILEFORMAT_HDR=1
/// or MAX_TEXTFORMAT_BUFFERS=8. Name must look like a config.h macro
/// (upper snake case) so typos/flags don't get silently swallowed as defines.
final RegExp _defineArgPattern = RegExp(r'^([A-Z][A-Z0-9_]*)=(.+)$');

late final String raylibVersion;
late final Map<String, String> raylibDefines;

Future<void> main(List<String> args) async {
  logBanner('raylib_dartified_web / SETUP');

  final opts = _parseArgs(args);
  raylibVersion = opts.version;
  raylibDefines = opts.defines;

  _checkEnv();

  await _cloneRaylib();
  await _cloneRaygui();
  await _buildRaylibForWasm();
  await _stageExtraHeaders();

  logOk('Setup complete.');
  logInfo('You can now run:  dart run raylib_dartified_web:build --entry=<entry.dart>');
}

class _SetupArgs {
  final String version;
  final Map<String, String> defines;
  _SetupArgs(this.version, this.defines);
}

/// Parses `--raylib-version[=X]` plus any number of bare
/// `SOME_CONFIG_FLAG=value` args, which are forwarded to raylib's cmake
/// build as `-D` compiler defines. Since config.h wraps every flag in
/// `#ifndef X / #define X ... #endif`, pre-defining X on the compiler
/// command line overrides the default without ever touching config.h.
_SetupArgs _parseArgs(List<String> args) {
  String? version;
  final defines = <String, String>{};

  for (var i = 0; i < args.length; i++) {
    final arg = args[i];

    if (arg.startsWith('--raylib-version=')) {
      version = arg.substring('--raylib-version='.length);
      continue;
    }
    if (arg == '--raylib-version') {
      if (i + 1 >= args.length) {
        logDie('--raylib-version requires a value, e.g. --raylib-version=6.0');
      }
      version = args[++i];
      continue;
    }
    if (arg.startsWith('--')) {
      logDie('Unrecognized flag "$arg".');
    }

    final match = _defineArgPattern.firstMatch(arg);
    if (match == null) {
      logDie(
        'Unrecognized argument "$arg".\n'
        '  Expected a raylib config.h define, e.g. SUPPORT_FILEFORMAT_HDR=1\n'
        '  (see raylib\'s src/config.h for available flags).',
      );
    }
    defines[match.group(1)!] = match.group(2)!;
  }

  version ??= _defaultRaylibVersion;
  if (!_supportedRaylibVersions.contains(version)) {
    logDie(
      'Unsupported raylib version "$version".\n'
      '  Supported: ${_supportedRaylibVersions.join(', ')}',
    );
  }

  logInfo('Using raylib $version');
  if (defines.isNotEmpty) {
    final pretty = defines.entries.map((e) => '${e.key}=${e.value}').join(', ');
    logInfo('Raylib config overrides: $pretty');
  }

  return _SetupArgs(version, defines);
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

File _versionMarker(Directory repoDir) => File(p.join(repoDir.path, '.cloned-version'));

/// Returns true if [repoDir] exists and matches [version] (based on the
/// marker file written after a successful clone). If it exists but doesn't
/// match (or the marker is missing/unreadable), it's deleted along with
/// [alsoCleanOnMismatch] (stale build output for the old version) so the
/// caller can re-clone.
bool _repoMatchesVersion(
  Directory repoDir,
  String version, {
  List<Directory> alsoCleanOnMismatch = const [],
}) {
  if (!repoDir.existsSync()) return false;

  final marker = _versionMarker(repoDir);
  final clonedVersion = marker.existsSync() ? marker.readAsStringSync().trim() : null;

  if (clonedVersion == version) return true;

  logInfo(
    clonedVersion == null
        ? 'Existing clone has no version marker, re-cloning as $version.'
        : 'Existing clone is $clonedVersion, want $version, re-cloning.',
  );
  repoDir.deleteSync(recursive: true);
  for (final dir in alsoCleanOnMismatch) {
    if (dir.existsSync()) dir.deleteSync(recursive: true);
  }
  return false;
}

Future<void> _cloneRaylib() async {
  logStep('Raylib $raylibVersion');
  if (_repoMatchesVersion(
    raylibSrc,
    raylibVersion,
    alsoCleanOnMismatch: [raylibBuildDir, extraHeadersDir],
  )) {
    logOk('Already present, skipping clone.');
    return;
  }
  await logRun('git', [
    'clone',
    '--depth', '1',
    '--branch', raylibVersion,
    'https://github.com/raysan5/raylib.git',
    raylibSrc.path,
  ]);
  _versionMarker(raylibSrc).writeAsStringSync(raylibVersion);
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

  if (raylibBuildDir.existsSync()) {
    logInfo('Cleaning previous build…');
    raylibBuildDir.deleteSync(recursive: true);
  }
  raylibBuildDir.createSync(recursive: true);

  final emsdk = Platform.environment['EMSDK']!;
  // emcc cmake toolchain file expects forward slashes on all platforms
  final toolchainFile = p.join(
    emsdk, 'upstream', 'emscripten', 'cmake', 'Modules', 'Platform', 'Emscripten.cmake',
  ).replaceAll(r'\', '/');

  // Config.h flags (e.g. SUPPORT_FILEFORMAT_HDR=1) get pre-defined here
  // rather than edited into config.h, config.h's own #ifndef guard means
  // a compiler-line -D wins over its internal #define.
  final configDefines = raylibDefines.entries.map((e) => '-D${e.key}=${e.value}').join(' ');
  final cFlags = [
    '-DGRAPHICS_API_OPENGL_ES2',
    '-DGRAPHICS_API_OPENGL_ES3',
    if (configDefines.isNotEmpty) configDefines,
  ].join(' ');

  // Out-of-source build: raylibSrc is never written to, everything lands in
  // raylibBuildDir (source/build/raylib).
  await logRun('cmake', [
    '-S', raylibSrc.path,
    '-B', raylibBuildDir.path,
    '-DCMAKE_TOOLCHAIN_FILE=$toolchainFile',
    '-DBUILD_SHARED_LIBS=ON',
    '-DCMAKE_BUILD_TYPE=Debug',
    '-DPLATFORM=Web',
    '-DBUILD_EXAMPLES=OFF',
    '-DGRAPHICS=GRAPHICS_API_OPENGL_ES3',
    '-DCMAKE_C_FLAGS=$cFlags',
  ]);

  await logRun('cmake', [
    '--build', raylibBuildDir.path,
    '-j${Platform.numberOfProcessors}',
  ]);

  logOk('${raylibLibDir.path}${p.separator}');
}

Future<void> _stageExtraHeaders() async {
  logStep('Staging extra headers (rlights.h, msf_gif.h)');
  extraHeadersDir.createSync(recursive: true);

  final rLightsPath = File(p.join(raylibSrc.path, 'examples', 'models', 'rlights.h'));
  if (rLightsPath.existsSync()) {
    rLightsPath.copySync(p.join(extraHeadersDir.path, 'rlights.h'));
  } else {
    logWarn('rlights.h not found: ${rLightsPath.path}');
  }

  final msfGifPath = File(p.join(raylibSrc.path, 'examples', 'core', 'msf_gif.h'));
  if (msfGifPath.existsSync()) {
    msfGifPath.copySync(p.join(extraHeadersDir.path, 'msf_gif.h'));
  } else {
    logWarn('msf_gif.h not found: ${msfGifPath.path}');
  }
}