part of '../../../raylib_dartified_web.dart';

class RaylibAudioFlat extends RaylibAudioFlatModule<Raylib> {

  RaylibAudioFlat(super.rl);

  RaylibAudio get _wasm => rl.module();

  @override
  void InitAudioDevice() => _wasm.InitAudioDevice();
  
  @override
  void CloseAudioDevice() => _wasm.CloseAudioDevice();
  
  @override
  bool IsAudioDeviceReady() => _wasm.IsAudioDeviceReady();
  
  @override
  void SetMasterVolume(
    double volume,
  ) => _wasm.SetMasterVolume(
    volume.toJS,
  );
  
  @override
  double GetMasterVolume() => _wasm.GetMasterVolume();
  
  @override
  WaveD LoadWave(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.LoadWave,
    (p) => _wasm.LoadWave(
      p.toJS,
      fileName.toJS,
    ),
  );
  
  @override
  WaveD LoadWaveFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> fileData,
    int dataSize,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.LoadWaveFromMemory,
    (p) => _wasm.LoadWaveFromMemory(
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
    ),
  );
  
  @override
  bool IsWaveValid(
    WaveD wave,
  ) => _wasm.IsWaveValid(
    rl.Temp.Wave$.Ref1(wave).toJS,
  );
  
  @override
  SoundD LoadSound(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSound,
    (p) => _wasm.LoadSound(
      p.toJS,
      fileName.toJS,
    ),
  );
  
  @override
  SoundD LoadSoundFromWave(
    WaveD wave,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundFromWave,
    (p) => _wasm.LoadSoundFromWave(
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ),
  );
  
  @override
  SoundD LoadSoundAlias(
    SoundD source,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundAlias,
    (p) => _wasm.LoadSoundAlias(
      p.toJS,
      rl.Temp.Sound$.Ref1(source).toJS,
    ),
  );
  
  @override
  bool IsSoundValid(
    SoundD sound,
  ) => _wasm.IsSoundValid(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void UpdateSound(
    SoundD sound,
    MemoryPointer<RVoid> data,
    int sampleCount,
  ) => _wasm.UpdateSound(
    rl.Temp.Sound$.Ref1(sound).toJS,
    data.toJS,
    sampleCount.toJS,
  );
  
  @override
  void UnloadWave(
    WaveD wave,
  ) => _wasm.UnloadWave(
    rl.Temp.Wave$.Ref1(wave).toJS,
  );
  
  @override
  void UnloadSound(
    SoundD sound,
  ) => _wasm.UnloadSound(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void UnloadSoundAlias(
    SoundD alias,
  ) => _wasm.UnloadSoundAlias(
    rl.Temp.Sound$.Ref1(alias).toJS,
  );
  
  @override
  bool ExportWave(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWave(
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  );
  
  @override
  bool ExportWaveAsCode(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWaveAsCode(
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  );
  
  @override
  void PlaySound(
    SoundD sound,
  ) => _wasm.PlaySound(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void StopSound(
    SoundD sound,
  ) => _wasm.StopSound(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void PauseSound(
    SoundD sound,
  ) => _wasm.PauseSound(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void ResumeSound(
    SoundD sound,
  ) => _wasm.ResumeSound(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  bool IsSoundPlaying(
    SoundD sound,
  ) => _wasm.IsSoundPlaying(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void SetSoundVolume(
    SoundD sound,
    double volume,
  ) => _wasm.SetSoundVolume(
    rl.Temp.Sound$.Ref1(sound).toJS,
    volume.toJS,
  );
  
  @override
  void SetSoundPitch(
    SoundD sound,
    double pitch,
  ) => _wasm.SetSoundPitch(
    rl.Temp.Sound$.Ref1(sound).toJS,
    pitch.toJS,
  );
  
  @override
  void SetSoundPan(
    SoundD sound,
    double pan,
  ) => _wasm.SetSoundPan(
    rl.Temp.Sound$.Ref1(sound).toJS,
    pan.toJS,
  );
  
  @override
  WaveD WaveCopy(
    WaveD wave,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.WaveCopy,
    (p) => _wasm.WaveCopy(
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ),
  );
  
  @override
  void WaveCrop(
    StructPointer<WaveD> wave,
    int initFrame,
    int finalFrame,
  ) => _wasm.WaveCrop(
    wave.toJS,
    initFrame.toJS,
    finalFrame.toJS,
  );
  
  @override
  void WaveFormat(
    StructPointer<WaveD> wave,
    int sampleRate,
    int sampleSize,
    int channels,
  ) => _wasm.WaveFormat(
    wave.toJS,
    sampleRate.toJS,
    sampleSize.toJS,
    channels.toJS,
  );
  
  @override
  WasmMemoryPointer<RFloat32> LoadWaveSamples(
    WaveD wave,
  ) => _wasm.LoadWaveSamples(
    rl.Temp.Wave$.Ref1(wave).toJS,
  );
  
  @override
  void UnloadWaveSamples(
    MemoryPointer<RFloat32> samples,
  ) => _wasm.UnloadWaveSamples(
    samples.toJS,
  );
  
  @override
  MusicD LoadMusicStream(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Music$.RefCapture(
    RaylibCaptureIds.LoadMusicStream,
    (p) => _wasm.LoadMusicStream(
      p.toJS,
      fileName.toJS,
    ),
  );
  
  @override
  MusicD LoadMusicStreamFromMemory(
    MemoryPointer<RChar> fileType,
    MemoryPointer<RUnsignedChar> data,
    int dataSize,
  ) => rl.Temp.Music$.RefCapture(
    RaylibCaptureIds.LoadMusicStreamFromMemory,
    (p) => _wasm.LoadMusicStreamFromMemory(
      p.toJS,
      fileType.toJS,
      data.toJS,
      dataSize.toJS,
    ),
  );
  
  @override
  bool IsMusicValid(
    MusicD music,
  ) => _wasm.IsMusicValid(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void UnloadMusicStream(
    MusicD music,
  ) => _wasm.UnloadMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void PlayMusicStream(
    MusicD music,
  ) => _wasm.PlayMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  bool IsMusicStreamPlaying(
    MusicD music,
  ) => _wasm.IsMusicStreamPlaying(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void UpdateMusicStream(
    MusicD music,
  ) => _wasm.UpdateMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void StopMusicStream(
    MusicD music,
  ) => _wasm.StopMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void PauseMusicStream(
    MusicD music,
  ) => _wasm.PauseMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void ResumeMusicStream(
    MusicD music,
  ) => _wasm.ResumeMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void SeekMusicStream(
    MusicD music,
    double position,
  ) => _wasm.SeekMusicStream(
    rl.Temp.Music$.Ref1(music).toJS,
    position.toJS,
  );
  
  @override
  void SetMusicVolume(
    MusicD music,
    double volume,
  ) => _wasm.SetMusicVolume(
    rl.Temp.Music$.Ref1(music).toJS,
    volume.toJS,
  );
  
  @override
  void SetMusicPitch(
    MusicD music,
    double pitch,
  ) => _wasm.SetMusicPitch(
    rl.Temp.Music$.Ref1(music).toJS,
    pitch.toJS,
  );
  
  @override
  void SetMusicPan(
    MusicD music,
    double pan,
  ) => _wasm.SetMusicPan(
    rl.Temp.Music$.Ref1(music).toJS,
    pan.toJS,
  );
  
  @override
  double GetMusicTimeLength(
    MusicD music,
  ) => _wasm.GetMusicTimeLength(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  double GetMusicTimePlayed(
    MusicD music,
  ) => _wasm.GetMusicTimePlayed(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  AudioStreamD LoadAudioStream(
    int sampleRate,
    int sampleSize,
    int channels
  ) => rl.Temp.AudioStream$.RefCapture(
    RaylibCaptureIds.LoadAudioStream,
    (p) => _wasm.LoadAudioStream(
      p.toJS,
      sampleRate.toJS,
      sampleSize.toJS,
      channels.toJS,
    ),
  );
  
  @override
  bool IsAudioStreamValid(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamValid(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void UnloadAudioStream(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamValid(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void UpdateAudioStream(
    AudioStreamD stream,
    MemoryPointer<RVoid> data,
    int frameCount,
  ) => _wasm.UpdateAudioStream(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    data.toJS,
    frameCount.toJS,
  );
  
  @override
  bool IsAudioStreamProcessed(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamProcessed(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void PlayAudioStream(
    AudioStreamD stream,
  ) => _wasm.PlayAudioStream(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void PauseAudioStream(
    AudioStreamD stream,
  ) => _wasm.PauseAudioStream(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void ResumeAudioStream(
    AudioStreamD stream,
  ) => _wasm.ResumeAudioStream(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  bool IsAudioStreamPlaying(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamPlaying(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void StopAudioStream(
    AudioStreamD stream,
  ) => _wasm.StopAudioStream(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void SetAudioStreamVolume(
    AudioStreamD stream,
    double volume,
  ) => _wasm.SetAudioStreamVolume(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    volume.toJS,
  );
  
  @override
  void SetAudioStreamPitch(
    AudioStreamD stream,
    double pitch,
  ) => _wasm.SetAudioStreamPitch(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pitch.toJS,
  );
  
  @override
  void SetAudioStreamPan(
    AudioStreamD stream,
    double pan,
  ) => _wasm.SetAudioStreamPan(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pan.toJS,
  );
  
  @override
  void SetAudioStreamBufferSizeDefault(
    int size,
  ) => _wasm.SetAudioStreamBufferSizeDefault(
    size.toJS,
  );
  
  @override
  void SetAudioStreamCallback(
    AudioStreamD stream,
    MemoryPointer<RFunction> callback, // AudioCallback
  ) => _wasm.SetAudioStreamCallback(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    callback.toJS,
  );
  
  @override
  void AttachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.AttachAudioStreamProcessor(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  );
  
  @override
  void DetachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.DetachAudioStreamProcessor(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  );
  
  @override
  void AttachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.AttachAudioMixedProcessor(
    processor.toJS,
  );
  
  @override
  void DetachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.DetachAudioMixedProcessor(
    processor.toJS,
  );
}