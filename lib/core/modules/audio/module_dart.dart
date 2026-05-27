part of '../../raylib_dartified_web.dart';

class RaylibAudioD extends RaylibAudioModuleBase<
  Raylib,
  
  // types
  AudioStreamD,
  MusicD,
  SoundD,
  WaveD,

  // callbacks
  AudioCallbackD
  
> {

  RaylibAudioD(super.rl);

  @override
  void dispose() {
    super.dispose();

    AudioCallbackD.disposeRegistry();
  }

  @override
  void InitAudioDevice() => run(
    () => RaylibDebugLabels.InitAudioDevice(),
    () => rl.Audio.InitAudioDevice.run,
  );

  @override
  void CloseAudioDevice() => run(
    () => RaylibDebugLabels.CloseAudioDevice(),
    () => rl.Audio.CloseAudioDevice.run,
  );
  
  @override
  bool IsAudioDeviceReady() => run(
    () => RaylibDebugLabels.IsAudioDeviceReady(),
    () => rl.Audio.IsAudioDeviceReady.run.toBool(),
  );

  @override
  void SetMasterVolume(
    num volume,
  ) => run(
    () => RaylibDebugLabels.SetMasterVolume(volume),
    () => rl.Audio.SetMasterVolume.run1(
      volume.toJS,
    ),
  );

  @override
  double GetMasterVolume() => run(
    () => RaylibDebugLabels.GetMasterVolume(),
    () => rl.Audio.GetMasterVolume.run.toDouble(),
  );

  @override
  WaveD LoadWave(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadWave(fileName),
    () => rl.Temp.Wave$.RefCapture(
      RaylibCaptureIds.LoadWave(fileName),
      (p) => rl.Audio.LoadWave.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );

  @override
  WaveD LoadWaveFromMemory(
    String fileType,
    Uint8List fileData,
  ) => run(
    () => RaylibDebugLabels.LoadWaveFromMemory(fileType, fileData),
    () => rl.Temp.Wave$.RefCapture(
      RaylibCaptureIds.LoadWaveFromMemory(fileType, fileData),
      (p) => rl.Audio.LoadWaveFromMemory.run4(
        p.toJS,
        fileType.toJS,
        rl.Temp.Uint8$.Array(fileData).toJS,
        fileData.length.toJS,
      ),
    ),
  );

  @override
  bool IsWaveValid(
    WaveD wave,
  ) => run(
    () => RaylibDebugLabels.IsWaveValid(wave),
    () => rl.Audio.IsWaveValid.run1(
      rl.Temp.Wave$.Ref1(wave).toJS,
    ).toBool(),
  );

  @override
  SoundD LoadSound(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadSound(fileName),
    () => rl.Temp.Sound$.RefCapture(
      RaylibCaptureIds.LoadSound(fileName),
      (p) => rl.Audio.LoadSound.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );

  @override
  SoundD LoadSoundFromWave(
    WaveD wave,
  ) => run(
    () => RaylibDebugLabels.LoadSoundFromWave(wave),
    () => rl.Temp.Sound$.RefCapture(
      RaylibCaptureIds.LoadSoundFromWave(wave),
      (p) => rl.Audio.LoadSoundFromWave.run2(
        p.toJS,
        rl.Temp.Wave$.Ref1(wave).toJS,
      ),
    ),
  );

  @override
  SoundD LoadSoundAlias(
    SoundD source,
  ) => run(
    () => RaylibDebugLabels.LoadSoundAlias(source),
    () => rl.Temp.Sound$.RefCapture(
      RaylibCaptureIds.LoadSoundAlias(source),
      (p) => rl.Audio.LoadSoundAlias.run2(
        p.toJS,
        rl.Temp.Sound$.Ref1(source).toJS,
      ),
    ),
  );

  @override
  bool IsSoundValid(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.IsSoundValid(sound),
    () => rl.Audio.IsSoundValid.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ).toBool(),
  );

  @override
  void UpdateSound(
    SoundD sound,
    TypedDataList data,
    num sampleCount,
  ) => run(
    () => RaylibDebugLabels.UpdateSound(sound, data, sampleCount),
    () => rl.Temp.Sound$.RefUpdate1(sound,
      (p) => rl.Audio.UpdateSound.run3(
        p.toJS,
        rl.Temp.TypedDataList$.Array(data).toJS,
        sampleCount.toJS,
      ),
    ),
  );

  @override
  void UnloadWave(
    WaveD wave,
  ) => run(
    () => RaylibDebugLabels.UnloadWave(wave),
    () => rl.Audio.UnloadWave.run1(
      rl.Temp.Wave$.Ref1(wave).toJS,
    ),
  );

  @override
  void UnloadSound(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.UnloadSound(sound),
    () => rl.Audio.UnloadSound.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ),
  );

  @override
  void UnloadSoundAlias(
    SoundD alias,
  ) => run(
    () => RaylibDebugLabels.UnloadSoundAlias(alias),
    () => rl.Audio.UnloadSoundAlias.run1(
      rl.Temp.Sound$.Ref1(alias).toJS,
    ),
  );

  @override
  bool ExportWave(
    WaveD wave,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportWave(wave, fileName),
    () => rl.Audio.ExportWave.run2(
      rl.Temp.Wave$.Ref1(wave).toJS,
      fileName.toJS,
    ).toBool(),
  );

  @override
  bool ExportWaveAsCode(
    WaveD wave,
    String fileName,
  ) => run(
    () => RaylibDebugLabels.ExportWaveAsCode(wave, fileName),
    () => rl.Audio.ExportWaveAsCode.run2(
      rl.Temp.Wave$.Ref1(wave).toJS,
      fileName.toJS,
    ).toBool(),
  );

  @override
  void PlaySound(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.PlaySound(sound),
    () => rl.Audio.PlaySound.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ),
  );

  @override
  void StopSound(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.StopSound(sound),
    () => rl.Audio.StopSound.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ),
  );

  @override
  void PauseSound(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.PauseSound(sound),
    () => rl.Audio.PauseSound.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ),
  );

  @override
  void ResumeSound(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.ResumeSound(sound),
    () => rl.Audio.ResumeSound.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ),
  );

  @override
  bool IsSoundPlaying(
    SoundD sound,
  ) => run(
    () => RaylibDebugLabels.IsSoundPlaying(sound),
    () => rl.Audio.IsSoundPlaying.run1(
      rl.Temp.Sound$.Ref1(sound).toJS,
    ).toBool(),
  );

  @override
  void SetSoundVolume(
    SoundD sound,
    num volume,
  ) => run(
    () => RaylibDebugLabels.SetSoundVolume(sound, volume),
    () => rl.Audio.SetSoundVolume.run2(
      rl.Temp.Sound$.Ref1(sound).toJS,
      volume.toJS,
    ),
  );

  @override
  void SetSoundPitch(
    SoundD sound,
    num pitch,
  ) => run(
    () => RaylibDebugLabels.SetSoundPitch(sound, pitch),
    () => rl.Audio.SetSoundPitch.run2(
      rl.Temp.Sound$.Ref1(sound).toJS,
      pitch.toJS,
    ),
  );

  @override
  void SetSoundPan(
    SoundD sound,
    num pan,
  ) => run(
    () => RaylibDebugLabels.SetSoundPan(sound, pan),
    () => rl.Audio.SetSoundPan.run2(
      rl.Temp.Sound$.Ref1(sound).toJS,
      pan.toJS,
    ),
  );

  @override
  WaveD WaveCopy(
    WaveD wave,
  ) => run(
    () => RaylibDebugLabels.WaveCopy(wave),
    () => rl.Temp.Wave$.RefCapture(
      RaylibCaptureIds.WaveCopy(wave),
      (p) => rl.Audio.WaveCopy.run2(
        p.toJS,
        rl.Temp.Wave$.Ref1(wave).toJS,
      ),
    ),
  );

  @override
  void WaveCrop(
    WaveD wave,
    num initFrame,
    num finalFrame,
  ) => run(
    () => RaylibDebugLabels.WaveCrop(wave, initFrame, finalFrame),
    () => rl.Temp.Wave$.RefUpdate1(wave,
      (p) => rl.Audio.WaveCrop.run3(
        p.toJS,
        initFrame.toJS,
        finalFrame.toJS,
      ),
    ),
  );

  @override
  void WaveFormat(
    WaveD wave,
    num sampleRate,
    num sampleSize,
    num channels,
  ) => run(
    () => RaylibDebugLabels.WaveFormat(wave, sampleRate, sampleSize, channels),
    () => rl.Temp.Wave$.RefUpdate1(wave,
      (p) => rl.Audio.WaveFormat.run4(
        p.toJS,
        sampleRate.toJS,
        sampleSize.toJS,
        channels.toJS,
      ),
    ),
  );

  @override
  List<double> LoadWaveSamples(
    WaveD wave
  ) => run(
    () => RaylibDebugLabels.LoadWaveSamples(wave),
    () {
      final samplesPtr = rl.Audio.LoadWaveSamples.run1(
        rl.Temp.Wave$.Ref1(wave).toJS,
      ).toInt();
      try {
        return WasmFloat32Pointer(samplesPtr).readArray(wave.waveLength);
      } finally {
        rl.Audio.UnloadWaveSamples.run1(samplesPtr.toJS);
      }
    },
  );

  @override
  MusicD LoadMusicStream(
    String fileName,
  ) => run(
    () => RaylibDebugLabels.LoadMusicStream(fileName),
    () => rl.Temp.Music$.RefCapture(
      RaylibCaptureIds.LoadMusicStream(fileName),
      (p) => rl.Audio.LoadMusicStream.run2(
        p.toJS,
        fileName.toJS,
      ),
    ),
  );

  @override
  MusicD LoadMusicStreamFromMemory(
    String fileType,
    Uint8List data,
  ) => run(
    () => RaylibDebugLabels.LoadMusicStreamFromMemory(fileType, data),
    () => rl.Temp.Music$.RefCapture(
      RaylibCaptureIds.LoadMusicStreamFromMemory(fileType, data),
      (p) => rl.Audio.LoadMusicStreamFromMemory.run4(
        p.toJS,
        fileType.toJS,
        rl.Temp.Uint8$.Array(data).toJS,
        data.length.toJS,
      ),
    ),
  );

  @override
  bool IsMusicValid(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.IsMusicValid(music),
    () => rl.Audio.IsMusicValid.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ).toBool(),
  );

  @override
  void UnloadMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.UnloadMusicStream(music),
    () => rl.Audio.UnloadMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  void PlayMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.PlayMusicStream(music),
    () => rl.Audio.PlayMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  bool IsMusicStreamPlaying(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.IsMusicStreamPlaying(music),
    () => rl.Audio.IsMusicStreamPlaying.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ).toBool(),
  );

  @override
  void UpdateMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.UpdateMusicStream(music),
    () => rl.Audio.UpdateMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  void StopMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.StopMusicStream(music),
    () => rl.Audio.StopMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  void PauseMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.PauseMusicStream(music),
    () => rl.Audio.PauseMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  void ResumeMusicStream(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.ResumeMusicStream(music),
    () => rl.Audio.ResumeMusicStream.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ),
  );

  @override
  void SeekMusicStream(
    MusicD music,
    num position,
  ) => run(
    () => RaylibDebugLabels.SeekMusicStream(music, position),
    () => rl.Audio.SeekMusicStream.run2(
      rl.Temp.Music$.Ref1(music).toJS,
      position.toJS,
    ),
  );

  @override
  void SetMusicVolume(
    MusicD music,
    num volume,
  ) => run(
    () => RaylibDebugLabels.SetMusicVolume(music, volume),
    () => rl.Audio.SetMusicVolume.run2(
      rl.Temp.Music$.Ref1(music).toJS,
      volume.toJS,
    ),
  );

  @override
  void SetMusicPitch(
    MusicD music,
    num pitch,
  ) => run(
    () => RaylibDebugLabels.SetMusicPitch(music, pitch),
    () => rl.Audio.SetMusicPitch.run2(
      rl.Temp.Music$.Ref1(music).toJS,
      pitch.toJS,
    ),
  );

  @override
  void SetMusicPan(
    MusicD music,
    num pan,
  ) => run(
    () => RaylibDebugLabels.SetMusicPan(music, pan),
    () => rl.Audio.SetMusicPan.run2(
      rl.Temp.Music$.Ref1(music).toJS,
      pan.toJS,
    ),
  );

  @override
  double GetMusicTimeLength(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.GetMusicTimeLength(music),
    () => rl.Audio.GetMusicTimeLength.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ).toDouble(),
  );

  @override
  double GetMusicTimePlayed(
    MusicD music,
  ) => run(
    () => RaylibDebugLabels.GetMusicTimePlayed(music),
    () => rl.Audio.GetMusicTimePlayed.run1(
      rl.Temp.Music$.Ref1(music).toJS,
    ).toDouble(),
  );

  @override
  AudioStreamD LoadAudioStream(
    num sampleRate,
    num sampleSize,
    num channels,
  ) => run(
    () => RaylibDebugLabels.LoadAudioStream(sampleRate, sampleSize, channels),
    () => rl.Temp.AudioStream$.RefCapture(
      RaylibCaptureIds.LoadAudioStream(sampleRate, sampleSize, channels),
      (p) => rl.Audio.LoadAudioStream.run4(
        p.toJS,
        sampleRate.toJS,
        sampleSize.toJS,
        channels.toJS,
      ),
    ),
  );

  @override
  bool IsAudioStreamValid(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.IsAudioStreamValid(stream),
    () => rl.Audio.IsAudioStreamValid.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ).toBool(),
  );

  @override
  void UnloadAudioStream(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.UnloadAudioStream(stream),
    () => rl.Audio.UnloadAudioStream.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ),
  );

  @override
  void UpdateAudioStream(
    AudioStreamD stream,
    TypedDataList data,
  ) => run(
    () => RaylibDebugLabels.UpdateAudioStream(stream, data),
    () => rl.Temp.AudioStream$.RefUpdate1(stream,
      (p) => rl.Audio.UpdateAudioStream.run3(
        p.toJS,
        rl.Temp.TypedDataList$.Array(data).toJS,
        data.length.toJS,
      ),
    ),
  );

  @override
  bool IsAudioStreamProcessed(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.IsAudioStreamProcessed(stream),
    () => rl.Audio.IsAudioStreamProcessed.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ).toBool(),
  );

  @override
  void PlayAudioStream(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.PlayAudioStream(stream),
    () => rl.Audio.PlayAudioStream.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ),
  );

  @override
  void PauseAudioStream(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.PauseAudioStream(stream),
    () => rl.Audio.PauseAudioStream.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ),
  );

  @override
  void ResumeAudioStream(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.ResumeAudioStream(stream),
    () => rl.Audio.ResumeAudioStream.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ),
  );

  @override
  bool IsAudioStreamPlaying(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.IsAudioStreamPlaying(stream),
    () => rl.Audio.IsAudioStreamPlaying.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ).toBool(),
  );

  @override
  void StopAudioStream(
    AudioStreamD stream,
  ) => run(
    () => RaylibDebugLabels.StopAudioStream(stream),
    () => rl.Audio.StopAudioStream.run1(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
    ),
  );

  @override
  void SetAudioStreamVolume(
    AudioStreamD stream,
    num volume,
  ) => run(
    () => RaylibDebugLabels.SetAudioStreamVolume(stream, volume),
    () => rl.Audio.SetAudioStreamVolume.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      volume.toJS,
    ),
  );

  @override
  void SetAudioStreamPitch(
    AudioStreamD stream,
    num pitch,
  ) => run(
    () => RaylibDebugLabels.SetAudioStreamPitch(stream, pitch),
    () => rl.Audio.SetAudioStreamPitch.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      pitch.toJS,
    ),
  );

  @override
  void SetAudioStreamPan(
    AudioStreamD stream,
    num pan,
  ) => run(
    () => RaylibDebugLabels.SetAudioStreamPan(stream, pan),
    () => rl.Audio.SetAudioStreamPan.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      pan.toJS,
    ),
  );

  @override
  void SetAudioStreamBufferSizeDefault(
    num size,
  ) => run(
    () => RaylibDebugLabels.SetAudioStreamBufferSizeDefault(size),
    () => rl.Audio.SetAudioStreamBufferSizeDefault.run1(
      size.toJS,
    ),
  );

  @override
  void SetAudioStreamCallback(
    AudioStreamD stream,
    AudioCallbackD callback,
  ) => run(
    () => RaylibDebugLabels.SetAudioStreamCallback(stream, callback),
    () => rl.Audio.SetAudioStreamCallback.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      callback.attach().toJS,
    ),
  );

  @override
  void AttachAudioStreamProcessor(
    AudioStreamD stream,
    AudioCallbackD callback,
  ) => run(
    () => RaylibDebugLabels.AttachAudioStreamProcessor(stream, callback),
    () => rl.Audio.AttachAudioStreamProcessor.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      callback.attach().toJS,
    ),
  );

  @override
  void DetachAudioStreamProcessor(
    AudioStreamD stream,
    AudioCallbackD callback,
    {bool keepAlive = false}
  ) => run(
    () => RaylibDebugLabels.DetachAudioStreamProcessor(stream, callback, keepAlive: keepAlive),
    () => rl.Audio.DetachAudioStreamProcessor.run2(
      rl.Temp.AudioStream$.Ref1(stream).toJS,
      callback.detach(keepAlive).toJS,
    ),
  );

  @override
  void AttachAudioMixedProcessor(
    AudioCallbackD callback,
  ) => run(
    () => RaylibDebugLabels.AttachAudioMixedProcessor(callback),
    () => rl.Audio.AttachAudioMixedProcessor.run1(
      callback.attach().toJS,
    ),
  );

  @override
  void DetachAudioMixedProcessor(
    AudioCallbackD callback,
    {bool keepAlive = false}
  ) => run(
    () => RaylibDebugLabels.DetachAudioMixedProcessor(callback, keepAlive: keepAlive),
    () => rl.Audio.DetachAudioMixedProcessor.run1(
      callback.detach(keepAlive).toJS,
    ),
  );
}