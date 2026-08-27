part of '../../../raylib_dartified_web.dart';

class RaylibAudioFlat extends RaylibAudioFlatModule<Raylib> {

  RaylibAudioFlat(super.rl);

  @override
  void InitAudioDevice() => rl.Audio.InitAudioDevice.run();
  
  @override
  void CloseAudioDevice() => rl.Audio.CloseAudioDevice.run();
  
  @override
  bool IsAudioDeviceReady() => rl.Audio.IsAudioDeviceReady.run().toBool();
  
  @override
  void SetMasterVolume(
    double volume,
  ) => rl.Audio.SetMasterVolume.run(
    volume.toJS,
  );
  
  @override
  double GetMasterVolume() => rl.Audio.GetMasterVolume.run().toDouble();
  
  @override
  WaveD LoadWave(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.LoadWave,
    (p) => rl.Audio.LoadWave.run(
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
    (p) => rl.Audio.LoadWaveFromMemory.run(
      p.toJS,
      fileType.toJS,
      fileData.toJS,
      dataSize.toJS,
    ),
  );
  
  @override
  bool IsWaveValid(
    WaveD wave,
  ) => rl.Audio.IsWaveValid.run(
    rl.Temp.Wave$.Ref1(wave).toJS,
  ).toBool();
  
  @override
  SoundD LoadSound(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSound,
    (p) => rl.Audio.LoadSound.run(
      p.toJS,
      fileName.toJS,
    ),
  );
  
  @override
  SoundD LoadSoundFromWave(
    WaveD wave,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundFromWave,
    (p) => rl.Audio.LoadSoundFromWave.run(
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ),
  );
  
  @override
  SoundD LoadSoundAlias(
    SoundD source,
  ) => rl.Temp.Sound$.RefCapture(
    RaylibCaptureIds.LoadSoundAlias,
    (p) => rl.Audio.LoadSoundAlias.run(
      p.toJS,
      rl.Temp.Sound$.Ref1(source).toJS,
    ),
  );
  
  @override
  bool IsSoundValid(
    SoundD sound,
  ) => rl.Audio.IsSoundValid.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  ).toBool();
  
  @override
  void UpdateSound(
    SoundD sound,
    MemoryPointer<RVoid> data,
    int sampleCount,
  ) => rl.Temp.Sound$.RefUpdate1(sound,
    (p) => rl.Audio.UpdateSound.run(
      p.toJS,
      data.toJS,
      sampleCount.toJS,
    ),
  );
  
  @override
  void UnloadWave(
    WaveD wave,
  ) => rl.Audio.UnloadWave.run(
    rl.Temp.Wave$.Ref1(wave).toJS,
  );
  
  @override
  void UnloadSound(
    SoundD sound,
  ) => rl.Audio.UnloadSound.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void UnloadSoundAlias(
    SoundD alias,
  ) => rl.Audio.UnloadSoundAlias.run(
    rl.Temp.Sound$.Ref1(alias).toJS,
  );
  
  @override
  bool ExportWave(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => rl.Audio.ExportWave.run(
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  ).toBool();
  
  @override
  bool ExportWaveAsCode(
    WaveD wave,
    MemoryPointer<RChar> fileName,
  ) => rl.Audio.ExportWaveAsCode.run(
    rl.Temp.Wave$.Ref1(wave).toJS,
    fileName.toJS,
  ).toBool();
  
  @override
  void PlaySound(
    SoundD sound,
  ) => rl.Audio.PlaySound.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void StopSound(
    SoundD sound,
  ) => rl.Audio.StopSound.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void PauseSound(
    SoundD sound,
  ) => rl.Audio.PauseSound.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  void ResumeSound(
    SoundD sound,
  ) => rl.Audio.ResumeSound.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  );
  
  @override
  bool IsSoundPlaying(
    SoundD sound,
  ) => rl.Audio.IsSoundPlaying.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
  ).toBool();
  
  @override
  void SetSoundVolume(
    SoundD sound,
    double volume,
  ) => rl.Audio.SetSoundVolume.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
    volume.toJS,
  );
  
  @override
  void SetSoundPitch(
    SoundD sound,
    double pitch,
  ) => rl.Audio.SetSoundPitch.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
    pitch.toJS,
  );
  
  @override
  void SetSoundPan(
    SoundD sound,
    double pan,
  ) => rl.Audio.SetSoundPan.run(
    rl.Temp.Sound$.Ref1(sound).toJS,
    pan.toJS,
  );
  
  @override
  WaveD WaveCopy(
    WaveD wave,
  ) => rl.Temp.Wave$.RefCapture(
    RaylibCaptureIds.WaveCopy,
    (p) => rl.Audio.WaveCopy.run(
      p.toJS,
      rl.Temp.Wave$.Ref1(wave).toJS,
    ),
  );
  
  @override
  void WaveCrop(
    StructPointer<WaveD> wave,
    int initFrame,
    int finalFrame,
  ) => rl.Audio.WaveCrop.run(
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
  ) => rl.Audio.WaveFormat.run(
    wave.toJS,
    sampleRate.toJS,
    sampleSize.toJS,
    channels.toJS,
  );
  
  @override
  WasmMemoryPointer<RFloat32> LoadWaveSamples(
    WaveD wave,
  ) => rl.Audio.LoadWaveSamples.run(
    rl.Temp.Wave$.Ref1(wave).toJS,
  ).asMemoryPointer();
  
  @override
  void UnloadWaveSamples(
    MemoryPointer<RFloat32> samples,
  ) => rl.Audio.UnloadWaveSamples.run(
    samples.toJS,
  );
  
  @override
  MusicD LoadMusicStream(
    MemoryPointer<RChar> fileName,
  ) => rl.Temp.Music$.RefCapture(
    RaylibCaptureIds.LoadMusicStream,
    (p) => rl.Audio.LoadMusicStream.run(
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
    (p) => rl.Audio.LoadMusicStreamFromMemory.run(
      p.toJS,
      fileType.toJS,
      data.toJS,
      dataSize.toJS,
    ),
  );
  
  @override
  bool IsMusicValid(
    MusicD music,
  ) => rl.Audio.IsMusicValid.run(
    rl.Temp.Music$.Ref1(music).toJS,
  ).toBool();
  
  @override
  void UnloadMusicStream(
    MusicD music,
  ) => rl.Audio.UnloadMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void PlayMusicStream(
    MusicD music,
  ) => rl.Audio.PlayMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  bool IsMusicStreamPlaying(
    MusicD music,
  ) => rl.Audio.IsMusicStreamPlaying.run(
    rl.Temp.Music$.Ref1(music).toJS,
  ).toBool();
  
  @override
  void UpdateMusicStream(
    MusicD music,
  ) => rl.Audio.UpdateMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void StopMusicStream(
    MusicD music,
  ) => rl.Audio.StopMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void PauseMusicStream(
    MusicD music,
  ) => rl.Audio.PauseMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void ResumeMusicStream(
    MusicD music,
  ) => rl.Audio.ResumeMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
  );
  
  @override
  void SeekMusicStream(
    MusicD music,
    double position,
  ) => rl.Audio.SeekMusicStream.run(
    rl.Temp.Music$.Ref1(music).toJS,
    position.toJS,
  );
  
  @override
  void SetMusicVolume(
    MusicD music,
    double volume,
  ) => rl.Audio.SetMusicVolume.run(
    rl.Temp.Music$.Ref1(music).toJS,
    volume.toJS,
  );
  
  @override
  void SetMusicPitch(
    MusicD music,
    double pitch,
  ) => rl.Audio.SetMusicPitch.run(
    rl.Temp.Music$.Ref1(music).toJS,
    pitch.toJS,
  );
  
  @override
  void SetMusicPan(
    MusicD music,
    double pan,
  ) => rl.Audio.SetMusicPan.run(
    rl.Temp.Music$.Ref1(music).toJS,
    pan.toJS,
  );
  
  @override
  double GetMusicTimeLength(
    MusicD music,
  ) => rl.Audio.GetMusicTimeLength.run(
    rl.Temp.Music$.Ref1(music).toJS,
  ).toDouble();
  
  @override
  double GetMusicTimePlayed(
    MusicD music,
  ) => rl.Audio.GetMusicTimePlayed.run(
    rl.Temp.Music$.Ref1(music).toJS,
  ).toDouble();
  
  @override
  AudioStreamD LoadAudioStream(
    int sampleRate,
    int sampleSize,
    int channels
  ) => rl.Temp.AudioStream$.RefCapture(
    RaylibCaptureIds.LoadAudioStream,
    (p) => rl.Audio.LoadAudioStream.run(
      p.toJS,
      sampleRate.toJS,
      sampleSize.toJS,
      channels.toJS,
    ),
  );
  
  @override
  bool IsAudioStreamValid(
    AudioStreamD stream,
  ) => rl.Audio.IsAudioStreamValid.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ).toBool();
  
  @override
  void UnloadAudioStream(
    AudioStreamD stream,
  ) => rl.Audio.IsAudioStreamValid.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void UpdateAudioStream(
    AudioStreamD stream,
    MemoryPointer<RVoid> data,
    int frameCount,
  ) => rl.Audio.UpdateAudioStream.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    data.toJS,
    frameCount.toJS,
  );
  
  @override
  bool IsAudioStreamProcessed(
    AudioStreamD stream,
  ) => rl.Audio.IsAudioStreamProcessed.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ).toBool();
  
  @override
  void PlayAudioStream(
    AudioStreamD stream,
  ) => rl.Audio.PlayAudioStream.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void PauseAudioStream(
    AudioStreamD stream,
  ) => rl.Audio.PauseAudioStream.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void ResumeAudioStream(
    AudioStreamD stream,
  ) => rl.Audio.ResumeAudioStream.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  bool IsAudioStreamPlaying(
    AudioStreamD stream,
  ) => rl.Audio.IsAudioStreamPlaying.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  ).toBool();
  
  @override
  void StopAudioStream(
    AudioStreamD stream,
  ) => rl.Audio.StopAudioStream.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
  );
  
  @override
  void SetAudioStreamVolume(
    AudioStreamD stream,
    double volume,
  ) => rl.Audio.SetAudioStreamVolume.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    volume.toJS,
  );
  
  @override
  void SetAudioStreamPitch(
    AudioStreamD stream,
    double pitch,
  ) => rl.Audio.SetAudioStreamPitch.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pitch.toJS,
  );
  
  @override
  void SetAudioStreamPan(
    AudioStreamD stream,
    double pan,
  ) => rl.Audio.SetAudioStreamPan.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    pan.toJS,
  );
  
  @override
  void SetAudioStreamBufferSizeDefault(
    int size,
  ) => rl.Audio.SetAudioStreamBufferSizeDefault.run(
    size.toJS,
  );
  
  @override
  void SetAudioStreamCallback(
    AudioStreamD stream,
    MemoryPointer<RFunction> callback, // AudioCallback
  ) => rl.Audio.SetAudioStreamCallback.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    callback.toJS,
  );
  
  @override
  void AttachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => rl.Audio.AttachAudioStreamProcessor.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  );
  
  @override
  void DetachAudioStreamProcessor(
    AudioStreamD stream,
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => rl.Audio.DetachAudioStreamProcessor.run(
    rl.Temp.AudioStream$.Ref1(stream).toJS,
    processor.toJS,
  );
  
  @override
  void AttachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => rl.Audio.AttachAudioMixedProcessor.run(
    processor.toJS,
  );
  
  @override
  void DetachAudioMixedProcessor(
    MemoryPointer<RFunction> processor, // AudioCallback
  ) => rl.Audio.DetachAudioMixedProcessor.run(
    processor.toJS,
  );
}