# Raylib for Dart (WASM)

A **Dart-first**, modular **WASM binding for [raylib](https://www.raylib.com/)** via Emscripten.

> &nbsp;
> ⚠️ **Stability warning**
>
> You should **not rely on regular git pulls or updates** to be non-breaking. If you use this project, consider vendoring or pinning a specific commit.
>
> The API is **not stabilized**. Method signatures, type names, and module boundaries are subject to change without deprecation cycles. This applies especially to the `D` (Dart) layer, which is newer and less battle-tested than the raw WASM bindings.
>
> In particular, the `D` (Dart) layer may still contain **undetected memory safety issues** - incorrect struct serialization, ownership ambiguity, or linear memory misuse that has not yet surfaced. The fact that all provided examples run correctly is not proof that the `D` layer is safe or correct in general. If you are doing anything non-trivial, audit the relevant `D` wrappers before trusting them.
> &nbsp;

This project exposes raylib in an idiomatic Dart API targeting the browser via WebAssembly. Raylib is compiled with Emscripten and bridged to Dart through JS interop and a shared linear memory interface.

<p align="center"><img src="raylib_dartified.png" width="128px"></p>

## Platform Support

Web only. Requires a browser with WebAssembly and WebGL support, all modern browsers SHOULD qualify.

> For native platforms (Linux, Windows, etc.), see [`raylib_dartified`](https://pub.dev/packages/raylib_dartified).

## Build

> **Note:** The build tooling is functional but currently limited, not all emcc/cmake options are configurable yet. If you need custom flags, you'll need to invoke the toolchain manually for now.

### Prerequisites

- [Emscripten (emsdk)](https://emscripten.org/docs/getting_started/downloads.html) installed and sourced
- `git`, `cmake`, and `dart` on your PATH

### First-time setup

Downloads and builds raylib + raygui for WASM via emscripten:

```sh
dart run raylib_dartified_web:setup
```

This only needs to run once.

### Building your project

```sh
dart run raylib_dartified_web:build --entry=lib/main.dart
```

Output is written to `build/` in your current directory.

**Options:**

| Flag | Description |
|---|---|
| `--entry` | *(required)* Path to your Dart entry file |
| `--raylib-c` | Custom `raylib.c` (default: package builtin) |
| `--raylib-func-list` | Custom exported functions list (default: package builtin) |
| `--raylib-resources` | Path to `resources/` directory to preload (default: `./resources`) |

## Recommended Starting Point

See any example in `example/<category>/`.

Or start here: [core/core_basic_window.dart](example/core/core_basic_window.dart)

## abbr.dart

Since only one Raylib instance is allowed at a time, `abbr.dart` lets you skip one layer of namespacing and save some keystrokes. The `Raylib` instance remains accessible via `Raylib.instance`:

```dart
import 'package:raylib_dartified_web/raylib.dart';
import 'package:raylib_dartified_web/abbr.dart';

void main() => Raylib((rl) {
  CoreD.InitWindow(800, 600, 'Title');
});
```

## Safety Notes

* You are responsible for correct usage when writing into or reading from WASM linear memory directly
* Passing invalid offsets or malformed structs will produce undefined behavior or crashes
* `Gui` and other optional modules will be uninitialized if not loaded
* The `D` wrappers handle most of this for you - use them if in doubt

If you want guardrails, build them on top of this layer - or just use the `D` API.

## Examples

This repository includes **ported raylib examples**, rewritten to use the Dart WASM API exposed here.

The examples closely follow the **original raylib examples**, making it easy to cross-reference C code with Dart usage.

These examples are the **recommended starting point** to understand real-world usage, correct memory handling, and idiomatic patterns for this binding.

See the [example/](example/) directory for runnable code.

> WARNING: Some examples require `resources/` from the original Raylib source.  
> In that case just copy-paste the `resources/` folder into your project folder or provide `--raylib-resources=<path>` option to the `raylib_dartified_web:build` utility.

## See Also

- [CHEATSHEET.md](CHEATSHEET.md)
- [LIMITATIONS.md](LIMITATIONS.md)
- [SHADER_CONVERSION.md](SHADER_CONVERSION.md)

## License

This project is released under the **zlib/libpng license**.

It contains bindings and rewritten components derived from **raylib**, which is also licensed under zlib.

See [LICENSE](LICENSE) for details.

## Acknowledgements

* [raylib](https://www.raylib.com/) by Ramon Santamaria
* Dart & Emscripten

PRs, issues, and experiments are welcome.