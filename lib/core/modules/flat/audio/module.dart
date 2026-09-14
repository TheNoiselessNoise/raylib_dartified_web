part of '../../../raylib_dartified_web.dart';

class RaylibAudioFlat extends RaylibAudioFlatModule<Raylib> {

  RaylibAudioFlat(super.rl);

  RaylibAudio get _wasm => rl.module();

  @override
  void InitAudioDevice() => _wasm.InitAudioDevice.run();
  
  @override
  void CloseAudioDevice() => _wasm.CloseAudioDevice.run();
  
  @override
  bool IsAudioDeviceReady() => _wasm.IsAudioDeviceReady.run().toBool();
  
  @override
  void SetMasterVolume(
    double volume,
  ) => _wasm.SetMasterVolume.run([
    volume.toJS,
  ]);
  
  @override
  double GetMasterVolume() => _wasm.GetMasterVolume.run().toDouble();
  
  @override
  WaveD LoadWave(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.LoadWave,
    (p) => _wasm.LoadWave.run([
      p.toJS,
      fileName.toJS,
    ]),
  );
  
  @override
  WaveD LoadWaveFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.LoadWaveFromMemory,
    (p) => _wasm.LoadWaveFromMemory.run([
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
    ]),
  );
  
  @override
  bool IsWaveValid(
    WaveD wave,
  ) => _wasm.IsWaveValid.run([
    rl.Temp.Wave$.Ref1(wave).toJS,
  ]).toBool();
  
  @override
  SoundD LoadSound(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSound,
    (p) => _wasm.LoadSound.run([
      p.toJS,
      fileName.toJS,
    ]),
  );
  
  @override
  SoundD LoadSoundFromWave(
    WaveD wave,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundFromWave,
    (p) => _wasm.LoadSoundFromWave.run([
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ]),
  );
  
  @override
  SoundD LoadSoundAlias(
    SoundD source,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundAlias,
    (p) => _wasm.LoadSoundAlias.run([
      p.toJS,
      rl.Temp.Sound$.Ref1(source).toJS,
    ]),
  );
  
  @override
  bool IsSoundValid(
    SoundD sound,
  ) => _wasm.IsSoundValid.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]).toBool();
  
  @override
  void UpdateSound(
    SoundD sound,
    MemoryPointer<RVoid> data,
    int sampleCount,
  ) => _wasm.UpdateSound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
    data.toJS,
    sampleCount.toJS,
  ]);
  
  @override
  void UnloadWave(
    WaveD wave,
  ) => _wasm.UnloadWave.run([
    rl.Temp.Wave$.Ref1(wave).toJS,
  ]);
  
  @override
  void UnloadSound(
    SoundD sound,
  ) => _wasm.UnloadSound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]);
  
  @override
  void UnloadSoundAlias(
    SoundD alias,
  ) => _wasm.UnloadSoundAlias.run([
    rl.Temp.Sound$.Ref1(alias).toJS,
  ]);
  
  @override
  bool ExportWave(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWave.run([
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  ]).toBool();
  
  @override
  bool ExportWaveAsCode(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWaveAsCode.run([
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  ]).toBool();
  
  @override
  void PlaySound(
    SoundD sound,
  ) => _wasm.PlaySound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]);
  
  @override
  void StopSound(
    SoundD sound,
  ) => _wasm.StopSound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]);
  
  @override
  void PauseSound(
    SoundD sound,
  ) => _wasm.PauseSound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]);
  
  @override
  void ResumeSound(
    SoundD sound,
  ) => _wasm.ResumeSound.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]);
  
  @override
  bool IsSoundPlaying(
    SoundD sound,
  ) => _wasm.IsSoundPlaying.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
  ]).toBool();
  
  @override
  void SetSoundVolume(
    SoundD sound,
    double volume,
  ) => _wasm.SetSoundVolume.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
    volume.toJS,
  ]);
  
  @override
  void SetSoundPitch(
    SoundD sound,
    double pitch,
  ) => _wasm.SetSoundPitch.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
    pitch.toJS,
  ]);
  
  @override
  void SetSoundPan(
    SoundD sound,
    double pan,
  ) => _wasm.SetSoundPan.run([
    rl.Temp.Sound$.Ref1(sound).toJS,
    pan.toJS,
  ]);
  
  @override
  WaveD WaveCopy(
    WaveD wave,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.WaveCopy,
    (p) => _wasm.WaveCopy.run([
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ]),
  );
  
  @override
  void WaveCrop(
    StructPointer<WaveD> wave,
    int initFrame,
    int finalFrame,
  ) => _wasm.WaveCrop.run([
    wave.toJS,
    initFrame.toJS,
    finalFrame.toJS,
  ]);
  
  @override
  void WaveFormat(
    StructPointer<WaveD> wave,
    int sampleRate,
    int sampleSize,
    int channels,
  ) => _wasm.WaveFormat.run([
    wave.toJS,
    sampleRate.toJS,
    sampleSize.toJS,
    channels.toJS,
  ]);
  
  @override
  WasmMemoryPointer<RFloat32> LoadWaveSamples(
    WaveD wave,
  ) => _wasm.LoadWaveSamples.run([
    rl.Temp.Wave$.Ref1(wave).toJS,
  ]).asMemoryPointer();
  
  @override
  void UnloadWaveSamples(
    MemoryPointer<RFloat32> samples,
  ) => _wasm.UnloadWaveSamples.run([
    samples.toJS,
  ]);
  
  @override
  MusicD LoadMusicStream(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Music$.RefCapture(
    RaylibCaptureIds.LoadMusicStream,
    (p) => _wasm.LoadMusicStream.run([
      p.toJS,
      fileName.toJS,
    ]),
  );
  
  @override
  MusicD LoadMusicStreamFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Temp.Music$.RefCapture(
    RaylibCaptureIds.LoadMusicStreamFromMemory,
    (p) => _wasm.LoadMusicStreamFromMemory.run([
      p.toJS,
      fileType.toJS,
      data.toJS,
      dataSize.toJS,
    ]),
  );
  
  @override
  bool IsMusicValid(
    MusicD music,
  ) => _wasm.IsMusicValid.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]).toBool();
  
  @override
  void UnloadMusicStream(
    MusicD music,
  ) => _wasm.UnloadMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  void PlayMusicStream(
    MusicD music,
  ) => _wasm.PlayMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  bool IsMusicStreamPlaying(
    MusicD music,
  ) => _wasm.IsMusicStreamPlaying.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]).toBool();
  
  @override
  void UpdateMusicStream(
    MusicD music,
  ) => _wasm.UpdateMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  void StopMusicStream(
    MusicD music,
  ) => _wasm.StopMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  void PauseMusicStream(
    MusicD music,
  ) => _wasm.PauseMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  void ResumeMusicStream(
    MusicD music,
  ) => _wasm.ResumeMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]);
  
  @override
  void SeekMusicStream(
    MusicD music,
    double position,
  ) => _wasm.SeekMusicStream.run([
    rl.Temp.Music$.Ref1(music).toJS,
    position.toJS,
  ]);
  
  @override
  void SetMusicVolume(
    MusicD music,
    double volume,
  ) => _wasm.SetMusicVolume.run([
    rl.Temp.Music$.Ref1(music).toJS,
    volume.toJS,
  ]);
  
  @override
  void SetMusicPitch(
    MusicD music,
    double pitch,
  ) => _wasm.SetMusicPitch.run([
    rl.Temp.Music$.Ref1(music).toJS,
    pitch.toJS,
  ]);
  
  @override
  void SetMusicPan(
    MusicD music,
    double pan,
  ) => _wasm.SetMusicPan.run([
    rl.Temp.Music$.Ref1(music).toJS,
    pan.toJS,
  ]);
  
  @override
  double GetMusicTimeLength(
    MusicD music,
  ) => _wasm.GetMusicTimeLength.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]).toDouble();
  
  @override
  double GetMusicTimePlayed(
    MusicD music,
  ) => _wasm.GetMusicTimePlayed.run([
    rl.Temp.Music$.Ref1(music).toJS,
  ]).toDouble();
  
  @override
  AudioStreamD LoadAudioStream(
    int sampleRate,
    int sampleSize,
    int channels
  ) => rl.Temp.AudioStream$.RefCapture(
    RaylibCaptureIds.LoadAudioStream,
    (p) => _wasm.LoadAudioStream.run([
      p.toJS,
      sampleRate.toJS,
      sampleSize.toJS,
      channels.toJS,
    ]),
  );
  
  @override
  bool IsAudioStreamValid(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamValid.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]).toBool();
  
  @override
  void UnloadAudioStream(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamValid.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]);
  
  @override
  void UpdateAudioStream(
    AudioStreamD stream,
    MemoryPointer<RVoid> data,
    int frameCount,
  ) => _wasm.UpdateAudioStream.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    data.toJS,
    frameCount.toJS,
  ]);
  
  @override
  bool IsAudioStreamProcessed(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamProcessed.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]).toBool();
  
  @override
  void PlayAudioStream(
    AudioStreamD stream,
  ) => _wasm.PlayAudioStream.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]);
  
  @override
  void PauseAudioStream(
    AudioStreamD stream,
  ) => _wasm.PauseAudioStream.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]);
  
  @override
  void ResumeAudioStream(
    AudioStreamD stream,
  ) => _wasm.ResumeAudioStream.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]);
  
  @override
  bool IsAudioStreamPlaying(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamPlaying.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]).toBool();
  
  @override
  void StopAudioStream(
    AudioStreamD stream,
  ) => _wasm.StopAudioStream.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ]);
  
  @override
  void SetAudioStreamVolume(
    AudioStreamD stream,
    double volume,
  ) => _wasm.SetAudioStreamVolume.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    volume.toJS,
  ]);
  
  @override
  void SetAudioStreamPitch(
    AudioStreamD stream,
    double pitch,
  ) => _wasm.SetAudioStreamPitch.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pitch.toJS,
  ]);
  
  @override
  void SetAudioStreamPan(
    AudioStreamD stream,
    double pan,
  ) => _wasm.SetAudioStreamPan.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pan.toJS,
  ]);
  
  @override
  void SetAudioStreamBufferSizeDefault(
    int size,
  ) => _wasm.SetAudioStreamBufferSizeDefault.run([
    size.toJS,
  ]);
  
  @override
  void SetAudioStreamCallback(
    AudioStreamD stream,
    MemoryPointer<RFunction> callback, // AudioCallback
  ) => _wasm.SetAudioStreamCallback.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    callback.toJS,
  ]);
  
  @override
  void AttachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.AttachAudioStreamProcessor.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  ]);
  
  @override
  void DetachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.DetachAudioStreamProcessor.run([
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  ]);
  
  @override
  void AttachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.AttachAudioMixedProcessor.run([
    processor.toJS,
  ]);
  
  @override
  void DetachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.DetachAudioMixedProcessor.run([
    processor.toJS,
  ]);
}