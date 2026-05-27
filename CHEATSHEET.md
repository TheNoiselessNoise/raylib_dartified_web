# CHEATSHEET

Reference: [raylib C cheatsheet](https://www.raylib.com/cheatsheet/cheatsheet.html)

---

## 01 Callbacks

### Class form - stateful

```dart
class MyAudioCallback extends AudioCallbackD {
  int frameCount = 0; // stateful - survives across calls

  @override
  get function => (buffer, frames) {
    frameCount += frames;
    // write into buffer...
  };
}

final cb = MyAudioCallback();
rl.AudioD.AttachAudioMixedProcessor(cb);

// optional - also auto-detached on dispose()
rl.AudioD.DetachAudioMixedProcessor(cb);
```

### Factory form - inline function

```dart
// optional `name` parameter for debug output
final AudioCallbackD cb = .function(/*name: 'MyMixer', */(buffer, frames) {
  // do something
});

rl.AudioD.AttachAudioMixedProcessor(cb);
rl.AudioD.DetachAudioMixedProcessor(cb); // optional
```

> **NOTE** Keep a reference to the callback object alive for as long as it's attached.
> If it's GC'd, the native side will call a dangling pointer.

### Factory form - inline friendly function (where available)

Some callbacks provide a `.friendly` factory that accepts regular Dart types,
handling pointer conversion automatically at the callsite.

```dart
final SaveFileTextCallbackD cb = .friendly((fileName, text) {
  // fileName and text are already Dart Strings
  // return bool directly
  return true;
});
```

> **NOTE**: Not all callbacks have a `.friendly` factory, only those where the
> raw parameter or return types have a natural Dart equivalent and can be meaningfully converted.

---

## 02 Modules

### Built-in access

```dart
rl.Core   // WASM layer
rl.CoreD  // D layer (idiomatic Dart, hides pointers)
rl.Audio  rl.AudioD
rl.Rlgl   rl.RlglD
rl.Camera rl.CameraD
rl.LightD
rl.Gui    rl.GuiD

rl.Vector // Vector math
rl.Matrix // Matrix math
rl.Quat   // Quaternion math
rl.Color  // Color constants
rl.Ease   // Easing functions
rl.Temp   // Allocator
```

---

### User modules

```dart
class MyPhysicsModule extends RaylibModule<Raylib> {
  MyPhysicsModule(super.rl);

  void simulate(double dt) { /* ... */ }

  @override
  void load() {
    // setup
  }

  @override
  void dispose() {
    super.dispose();
    // cleanup
  }
}
```

```dart
final physics = MyPhysicsModule(rl);
rl.registerModule(physics);   // lifecycle managed by rl

// Option A - hold your own reference (simplest)
physics.simulate(dt);

// Option B - look up by type
rl.module<MyPhysicsModule>().simulate(dt);

// Option C - extension for rl.Physics ergonomics
extension MyModules on Raylib {
  MyPhysicsModule get Physics => module<MyPhysicsModule>();
}
// then: rl.Physics.simulate(dt);
```
