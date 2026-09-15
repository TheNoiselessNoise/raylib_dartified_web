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
  ) => $.Wave$.RefCapture(
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
  ) => $.Wave$.RefCapture(
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
    $.Wave$.Ref1(wave).toJS,
  );
  
  @override
  SoundD LoadSound(
    MemoryPointer<RChar> fileName,
  ) => $.Sound$.RefCapture(
    RaylibCaptureIds.LoadSound,
    (p) => _wasm.LoadSound(
      p.toJS,
      fileName.toJS,
    ),
  );
  
  @override
  SoundD LoadSoundFromWave(
    WaveD wave,
  ) => $.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundFromWave,
    (p) => _wasm.LoadSoundFromWave(
      p.toJS,
      $.Wave$.Ref1(wave).toJS,
    ),
  );
  
  @override
  SoundD LoadSoundAlias(
    SoundD source,
  ) => $.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundAlias,
    (p) => _wasm.LoadSoundAlias(
      p.toJS,
      $.Sound$.Ref1(source).toJS,
    ),
  );
  
  @override
  bool IsSoundValid(
    SoundD sound,
  ) => _wasm.IsSoundValid(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void UpdateSound(
    SoundD sound,
    MemoryPointer<RVoid> data,
    int sampleCount,
  ) => _wasm.UpdateSound(
    $.Sound$.Ref1(sound).toJS,
    data.toJS,
    sampleCount.toJS,
  );
  
  @override
  void UnloadWave(
    WaveD wave,
  ) => _wasm.UnloadWave(
    $.Wave$.Ref1(wave).toJS,
  );
  
  @override
  void UnloadSound(
    SoundD sound,
  ) => _wasm.UnloadSound(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void UnloadSoundAlias(
    SoundD alias,
  ) => _wasm.UnloadSoundAlias(
    $.Sound$.Ref1(alias).toJS,
  );
  
  @override
  bool ExportWave(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWave(
    $.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  );
  
  @override
  bool ExportWaveAsCode(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => _wasm.ExportWaveAsCode(
    $.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  );
  
  @override
  void PlaySound(
    SoundD sound,
  ) => _wasm.PlaySound(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void StopSound(
    SoundD sound,
  ) => _wasm.StopSound(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void PauseSound(
    SoundD sound,
  ) => _wasm.PauseSound(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void ResumeSound(
    SoundD sound,
  ) => _wasm.ResumeSound(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  bool IsSoundPlaying(
    SoundD sound,
  ) => _wasm.IsSoundPlaying(
    $.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void SetSoundVolume(
    SoundD sound,
    double volume,
  ) => _wasm.SetSoundVolume(
    $.Sound$.Ref1(sound).toJS,
    volume.toJS,
  );
  
  @override
  void SetSoundPitch(
    SoundD sound,
    double pitch,
  ) => _wasm.SetSoundPitch(
    $.Sound$.Ref1(sound).toJS,
    pitch.toJS,
  );
  
  @override
  void SetSoundPan(
    SoundD sound,
    double pan,
  ) => _wasm.SetSoundPan(
    $.Sound$.Ref1(sound).toJS,
    pan.toJS,
  );
  
  @override
  WaveD WaveCopy(
    WaveD wave,
  ) => $.Wave$.RefCapture(
    RaylibCaptureIds.WaveCopy,
    (p) => _wasm.WaveCopy(
      p.toJS,
      $.Wave$.Ref1(wave).toJS,
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
    $.Wave$.Ref1(wave).toJS,
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
  ) => $.Music$.RefCapture(
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
  ) => $.Music$.RefCapture(
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
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void UnloadMusicStream(
    MusicD music,
  ) => _wasm.UnloadMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void PlayMusicStream(
    MusicD music,
  ) => _wasm.PlayMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  bool IsMusicStreamPlaying(
    MusicD music,
  ) => _wasm.IsMusicStreamPlaying(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void UpdateMusicStream(
    MusicD music,
  ) => _wasm.UpdateMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void StopMusicStream(
    MusicD music,
  ) => _wasm.StopMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void PauseMusicStream(
    MusicD music,
  ) => _wasm.PauseMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void ResumeMusicStream(
    MusicD music,
  ) => _wasm.ResumeMusicStream(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  void SeekMusicStream(
    MusicD music,
    double position,
  ) => _wasm.SeekMusicStream(
    $.Music$.Ref1(music).toJS,
    position.toJS,
  );
  
  @override
  void SetMusicVolume(
    MusicD music,
    double volume,
  ) => _wasm.SetMusicVolume(
    $.Music$.Ref1(music).toJS,
    volume.toJS,
  );
  
  @override
  void SetMusicPitch(
    MusicD music,
    double pitch,
  ) => _wasm.SetMusicPitch(
    $.Music$.Ref1(music).toJS,
    pitch.toJS,
  );
  
  @override
  void SetMusicPan(
    MusicD music,
    double pan,
  ) => _wasm.SetMusicPan(
    $.Music$.Ref1(music).toJS,
    pan.toJS,
  );
  
  @override
  double GetMusicTimeLength(
    MusicD music,
  ) => _wasm.GetMusicTimeLength(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  double GetMusicTimePlayed(
    MusicD music,
  ) => _wasm.GetMusicTimePlayed(
    $.Music$.Ref1(music).toJS,
  );
  
  @override
  AudioStreamD LoadAudioStream(
    int sampleRate,
    int sampleSize,
    int channels
  ) => $.AudioStream$.RefCapture(
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
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void UnloadAudioStream(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamValid(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void UpdateAudioStream(
    AudioStreamD stream,
    MemoryPointer<RVoid> data,
    int frameCount,
  ) => _wasm.UpdateAudioStream(
    $.AudioStream$.Ref1(stream).toJS,
    data.toJS,
    frameCount.toJS,
  );
  
  @override
  bool IsAudioStreamProcessed(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamProcessed(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void PlayAudioStream(
    AudioStreamD stream,
  ) => _wasm.PlayAudioStream(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void PauseAudioStream(
    AudioStreamD stream,
  ) => _wasm.PauseAudioStream(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void ResumeAudioStream(
    AudioStreamD stream,
  ) => _wasm.ResumeAudioStream(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  bool IsAudioStreamPlaying(
    AudioStreamD stream,
  ) => _wasm.IsAudioStreamPlaying(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void StopAudioStream(
    AudioStreamD stream,
  ) => _wasm.StopAudioStream(
    $.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void SetAudioStreamVolume(
    AudioStreamD stream,
    double volume,
  ) => _wasm.SetAudioStreamVolume(
    $.AudioStream$.Ref1(stream).toJS,
    volume.toJS,
  );
  
  @override
  void SetAudioStreamPitch(
    AudioStreamD stream,
    double pitch,
  ) => _wasm.SetAudioStreamPitch(
    $.AudioStream$.Ref1(stream).toJS,
    pitch.toJS,
  );
  
  @override
  void SetAudioStreamPan(
    AudioStreamD stream,
    double pan,
  ) => _wasm.SetAudioStreamPan(
    $.AudioStream$.Ref1(stream).toJS,
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
    $.AudioStream$.Ref1(stream).toJS,
    callback.toJS,
  );
  
  @override
  void AttachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.AttachAudioStreamProcessor(
    $.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  );
  
  @override
  void DetachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => _wasm.DetachAudioStreamProcessor(
    $.AudioStream$.Ref1(stream).toJS,
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