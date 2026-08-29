part of 'raylib_dartified_web.dart';

@JS('FS')
external _FS get _fs;

extension type _FS._(JSObject _) implements JSObject {
  external JSUint8Array readFile(JSString path);
}

@JS('Blob')
extension type _Blob._(JSObject _) implements JSObject {
  external _Blob(JSArray<JSAny> parts, JSAny options);
}

@JS('URL')
extension type _URL._(JSObject _) implements JSObject {
  external static JSString createObjectURL(_Blob blob);
  external static JSVoid revokeObjectURL(JSString url);
}

@JS('document')
external _Document get _document;

extension type _Document._(JSObject _) implements JSObject {
  external _Anchor createElement(JSString tag);
}

extension type _Anchor._(JSObject _) implements JSObject {
  external set href(JSString value);
  external set download(JSString value);
  external JSVoid click();
}

void emscripten_fs_downloadFile(String file, String downloadAs) {
  final JSUint8Array bytes;
  try {
    bytes = _fs.readFile(file.toJS);
  } catch (e) {
    print('FS.readFile failed for "$file": $e');
    return;
  }

  final options = JSObject()..setProperty('type'.toJS, 'application/octet-stream'.toJS);
  final blob = _Blob([bytes].toJS, options);

  final url = _URL.createObjectURL(blob);
  final a = _document.createElement('a'.toJS)
    ..href = url
    ..download = downloadAs.toJS;
  a.click();
  _URL.revokeObjectURL(url);
}

@JS('downloadFile')
external set _downloadFileGlobal(JSFunction f);

void _register_emscripten_fs_downloadFile() {
  _downloadFileGlobal = ((String file, String downloadAs) => emscripten_fs_downloadFile(file, downloadAs)).toJS;
}

void _registerEmscriptenHelpers() {
  _register_emscripten_fs_downloadFile();
}