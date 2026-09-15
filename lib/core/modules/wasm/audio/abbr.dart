import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibAudio get _module => Raylib.instance.module();

/// See [RaylibAudio.InitAudioDevice].
WF0<void> get InitAudioDevice => _module.InitAudioDevice;
/// See [RaylibAudio.CloseAudioDevice].
WF0<void> get CloseAudioDevice => _module.CloseAudioDevice;
/// See [RaylibAudio.IsAudioDeviceReady].
WF0<bool> get IsAudioDeviceReady => _module.IsAudioDeviceReady;
/// See [RaylibAudio.SetMasterVolume].
WF1<void> get SetMasterVolume => _module.SetMasterVolume;
/// See [RaylibAudio.GetMasterVolume].
WF0<double> get GetMasterVolume => _module.GetMasterVolume;
/// See [RaylibAudio.LoadWave].
WF2<void> get LoadWave => _module.LoadWave;
/// See [RaylibAudio.LoadWaveFromMemory].
WF4<void> get LoadWaveFromMemory => _module.LoadWaveFromMemory;
/// See [RaylibAudio.IsWaveValid].
WF1<bool> get IsWaveValid => _module.IsWaveValid;
/// See [RaylibAudio.LoadSound].
WF2<void> get LoadSound => _module.LoadSound;
/// See [RaylibAudio.LoadSoundFromWave].
WF2<void> get LoadSoundFromWave => _module.LoadSoundFromWave;
/// See [RaylibAudio.LoadSoundAlias].
WF2<void> get LoadSoundAlias => _module.LoadSoundAlias;
/// See [RaylibAudio.IsSoundValid].
WF1<bool> get IsSoundValid => _module.IsSoundValid;
/// See [RaylibAudio.UpdateSound].
WF3<void> get UpdateSound => _module.UpdateSound;
/// See [RaylibAudio.UnloadWave].
WF1<void> get UnloadWave => _module.UnloadWave;
/// See [RaylibAudio.UnloadSound].
WF1<void> get UnloadSound => _module.UnloadSound;
/// See [RaylibAudio.UnloadSoundAlias].
WF1<void> get UnloadSoundAlias => _module.UnloadSoundAlias;
/// See [RaylibAudio.ExportWave].
WF2<bool> get ExportWave => _module.ExportWave;
/// See [RaylibAudio.ExportWaveAsCode].
WF2<bool> get ExportWaveAsCode => _module.ExportWaveAsCode;
/// See [RaylibAudio.PlaySound].
WF1<void> get PlaySound => _module.PlaySound;
/// See [RaylibAudio.StopSound].
WF1<void> get StopSound => _module.StopSound;
/// See [RaylibAudio.PauseSound].
WF1<void> get PauseSound => _module.PauseSound;
/// See [RaylibAudio.ResumeSound].
WF1<void> get ResumeSound => _module.ResumeSound;
/// See [RaylibAudio.IsSoundPlaying].
WF1<bool> get IsSoundPlaying => _module.IsSoundPlaying;
/// See [RaylibAudio.SetSoundVolume].
WF2<void> get SetSoundVolume => _module.SetSoundVolume;
/// See [RaylibAudio.SetSoundPitch].
WF2<void> get SetSoundPitch => _module.SetSoundPitch;
/// See [RaylibAudio.SetSoundPan].
WF2<void> get SetSoundPan => _module.SetSoundPan;
/// See [RaylibAudio.WaveCopy].
WF2<void> get WaveCopy => _module.WaveCopy;
/// See [RaylibAudio.WaveCrop].
WF3<void> get WaveCrop => _module.WaveCrop;
/// See [RaylibAudio.WaveFormat].
WF4<void> get WaveFormat => _module.WaveFormat;
/// See [RaylibAudio.LoadWaveSamples].
WF1<WasmMemoryPointer<RFloat>> get LoadWaveSamples => _module.LoadWaveSamples;
/// See [RaylibAudio.UnloadWaveSamples].
WF1<void> get UnloadWaveSamples => _module.UnloadWaveSamples;
/// See [RaylibAudio.LoadMusicStream].
WF2<void> get LoadMusicStream => _module.LoadMusicStream;
/// See [RaylibAudio.LoadMusicStreamFromMemory].
WF4<void> get LoadMusicStreamFromMemory => _module.LoadMusicStreamFromMemory;
/// See [RaylibAudio.IsMusicValid].
WF1<bool> get IsMusicValid => _module.IsMusicValid;
/// See [RaylibAudio.UnloadMusicStream].
WF1<void> get UnloadMusicStream => _module.UnloadMusicStream;
/// See [RaylibAudio.PlayMusicStream].
WF1<void> get PlayMusicStream => _module.PlayMusicStream;
/// See [RaylibAudio.IsMusicStreamPlaying].
WF1<bool> get IsMusicStreamPlaying => _module.IsMusicStreamPlaying;
/// See [RaylibAudio.UpdateMusicStream].
WF1<void> get UpdateMusicStream => _module.UpdateMusicStream;
/// See [RaylibAudio.StopMusicStream].
WF1<void> get StopMusicStream => _module.StopMusicStream;
/// See [RaylibAudio.PauseMusicStream].
WF1<void> get PauseMusicStream => _module.PauseMusicStream;
/// See [RaylibAudio.ResumeMusicStream].
WF1<void> get ResumeMusicStream => _module.ResumeMusicStream;
/// See [RaylibAudio.SeekMusicStream].
WF2<void> get SeekMusicStream => _module.SeekMusicStream;
/// See [RaylibAudio.SetMusicVolume].
WF2<void> get SetMusicVolume => _module.SetMusicVolume;
/// See [RaylibAudio.SetMusicPitch].
WF2<void> get SetMusicPitch => _module.SetMusicPitch;
/// See [RaylibAudio.SetMusicPan].
WF2<void> get SetMusicPan => _module.SetMusicPan;
/// See [RaylibAudio.GetMusicTimeLength].
WF1<double> get GetMusicTimeLength => _module.GetMusicTimeLength;
/// See [RaylibAudio.GetMusicTimePlayed].
WF1<double> get GetMusicTimePlayed => _module.GetMusicTimePlayed;
/// See [RaylibAudio.LoadAudioStream].
WF4<void> get LoadAudioStream => _module.LoadAudioStream;
/// See [RaylibAudio.IsAudioStreamValid].
WF1<bool> get IsAudioStreamValid => _module.IsAudioStreamValid;
/// See [RaylibAudio.UnloadAudioStream].
WF1<void> get UnloadAudioStream => _module.UnloadAudioStream;
/// See [RaylibAudio.UpdateAudioStream].
WF3<void> get UpdateAudioStream => _module.UpdateAudioStream;
/// See [RaylibAudio.IsAudioStreamProcessed].
WF1<bool> get IsAudioStreamProcessed => _module.IsAudioStreamProcessed;
/// See [RaylibAudio.PlayAudioStream].
WF1<void> get PlayAudioStream => _module.PlayAudioStream;
/// See [RaylibAudio.PauseAudioStream].
WF1<void> get PauseAudioStream => _module.PauseAudioStream;
/// See [RaylibAudio.ResumeAudioStream].
WF1<void> get ResumeAudioStream => _module.ResumeAudioStream;
/// See [RaylibAudio.IsAudioStreamPlaying].
WF1<bool> get IsAudioStreamPlaying => _module.IsAudioStreamPlaying;
/// See [RaylibAudio.StopAudioStream].
WF1<void> get StopAudioStream => _module.StopAudioStream;
/// See [RaylibAudio.SetAudioStreamVolume].
WF2<void> get SetAudioStreamVolume => _module.SetAudioStreamVolume;
/// See [RaylibAudio.SetAudioStreamPitch].
WF2<void> get SetAudioStreamPitch => _module.SetAudioStreamPitch;
/// See [RaylibAudio.SetAudioStreamPan].
WF2<void> get SetAudioStreamPan => _module.SetAudioStreamPan;
/// See [RaylibAudio.SetAudioStreamBufferSizeDefault].
WF1<void> get SetAudioStreamBufferSizeDefault => _module.SetAudioStreamBufferSizeDefault;
/// See [RaylibAudio.SetAudioStreamCallback].
WF2<void> get SetAudioStreamCallback => _module.SetAudioStreamCallback;
/// See [RaylibAudio.AttachAudioStreamProcessor].
WF2<void> get AttachAudioStreamProcessor => _module.AttachAudioStreamProcessor;
/// See [RaylibAudio.DetachAudioStreamProcessor].
WF2<void> get DetachAudioStreamProcessor => _module.DetachAudioStreamProcessor;
/// See [RaylibAudio.AttachAudioMixedProcessor].
WF1<void> get AttachAudioMixedProcessor => _module.AttachAudioMixedProcessor;
/// See [RaylibAudio.DetachAudioMixedProcessor].
WF1<void> get DetachAudioMixedProcessor => _module.DetachAudioMixedProcessor;
