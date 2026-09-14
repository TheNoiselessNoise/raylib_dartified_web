import 'dart:js_interop';
import 'package:raylib_dartified_web/raylib_dartified_web.dart';

RaylibAudio get _module => Raylib.instance.module();

/// See [RaylibAudio.InitAudioDevice].
JSFunction get InitAudioDevice => _module.InitAudioDevice;
/// See [RaylibAudio.CloseAudioDevice].
JSFunction get CloseAudioDevice => _module.CloseAudioDevice;
/// See [RaylibAudio.IsAudioDeviceReady].
JSFunction get IsAudioDeviceReady => _module.IsAudioDeviceReady;
/// See [RaylibAudio.SetMasterVolume].
JSFunction get SetMasterVolume => _module.SetMasterVolume;
/// See [RaylibAudio.GetMasterVolume].
JSFunction get GetMasterVolume => _module.GetMasterVolume;
/// See [RaylibAudio.LoadWave].
JSFunction get LoadWave => _module.LoadWave;
/// See [RaylibAudio.LoadWaveFromMemory].
JSFunction get LoadWaveFromMemory => _module.LoadWaveFromMemory;
/// See [RaylibAudio.IsWaveValid].
JSFunction get IsWaveValid => _module.IsWaveValid;
/// See [RaylibAudio.LoadSound].
JSFunction get LoadSound => _module.LoadSound;
/// See [RaylibAudio.LoadSoundFromWave].
JSFunction get LoadSoundFromWave => _module.LoadSoundFromWave;
/// See [RaylibAudio.LoadSoundAlias].
JSFunction get LoadSoundAlias => _module.LoadSoundAlias;
/// See [RaylibAudio.IsSoundValid].
JSFunction get IsSoundValid => _module.IsSoundValid;
/// See [RaylibAudio.UpdateSound].
JSFunction get UpdateSound => _module.UpdateSound;
/// See [RaylibAudio.UnloadWave].
JSFunction get UnloadWave => _module.UnloadWave;
/// See [RaylibAudio.UnloadSound].
JSFunction get UnloadSound => _module.UnloadSound;
/// See [RaylibAudio.UnloadSoundAlias].
JSFunction get UnloadSoundAlias => _module.UnloadSoundAlias;
/// See [RaylibAudio.ExportWave].
JSFunction get ExportWave => _module.ExportWave;
/// See [RaylibAudio.ExportWaveAsCode].
JSFunction get ExportWaveAsCode => _module.ExportWaveAsCode;
/// See [RaylibAudio.PlaySound].
JSFunction get PlaySound => _module.PlaySound;
/// See [RaylibAudio.StopSound].
JSFunction get StopSound => _module.StopSound;
/// See [RaylibAudio.PauseSound].
JSFunction get PauseSound => _module.PauseSound;
/// See [RaylibAudio.ResumeSound].
JSFunction get ResumeSound => _module.ResumeSound;
/// See [RaylibAudio.IsSoundPlaying].
JSFunction get IsSoundPlaying => _module.IsSoundPlaying;
/// See [RaylibAudio.SetSoundVolume].
JSFunction get SetSoundVolume => _module.SetSoundVolume;
/// See [RaylibAudio.SetSoundPitch].
JSFunction get SetSoundPitch => _module.SetSoundPitch;
/// See [RaylibAudio.SetSoundPan].
JSFunction get SetSoundPan => _module.SetSoundPan;
/// See [RaylibAudio.WaveCopy].
JSFunction get WaveCopy => _module.WaveCopy;
/// See [RaylibAudio.WaveCrop].
JSFunction get WaveCrop => _module.WaveCrop;
/// See [RaylibAudio.WaveFormat].
JSFunction get WaveFormat => _module.WaveFormat;
/// See [RaylibAudio.LoadWaveSamples].
JSFunction get LoadWaveSamples => _module.LoadWaveSamples;
/// See [RaylibAudio.UnloadWaveSamples].
JSFunction get UnloadWaveSamples => _module.UnloadWaveSamples;
/// See [RaylibAudio.LoadMusicStream].
JSFunction get LoadMusicStream => _module.LoadMusicStream;
/// See [RaylibAudio.LoadMusicStreamFromMemory].
JSFunction get LoadMusicStreamFromMemory => _module.LoadMusicStreamFromMemory;
/// See [RaylibAudio.IsMusicValid].
JSFunction get IsMusicValid => _module.IsMusicValid;
/// See [RaylibAudio.UnloadMusicStream].
JSFunction get UnloadMusicStream => _module.UnloadMusicStream;
/// See [RaylibAudio.PlayMusicStream].
JSFunction get PlayMusicStream => _module.PlayMusicStream;
/// See [RaylibAudio.IsMusicStreamPlaying].
JSFunction get IsMusicStreamPlaying => _module.IsMusicStreamPlaying;
/// See [RaylibAudio.UpdateMusicStream].
JSFunction get UpdateMusicStream => _module.UpdateMusicStream;
/// See [RaylibAudio.StopMusicStream].
JSFunction get StopMusicStream => _module.StopMusicStream;
/// See [RaylibAudio.PauseMusicStream].
JSFunction get PauseMusicStream => _module.PauseMusicStream;
/// See [RaylibAudio.ResumeMusicStream].
JSFunction get ResumeMusicStream => _module.ResumeMusicStream;
/// See [RaylibAudio.SeekMusicStream].
JSFunction get SeekMusicStream => _module.SeekMusicStream;
/// See [RaylibAudio.SetMusicVolume].
JSFunction get SetMusicVolume => _module.SetMusicVolume;
/// See [RaylibAudio.SetMusicPitch].
JSFunction get SetMusicPitch => _module.SetMusicPitch;
/// See [RaylibAudio.SetMusicPan].
JSFunction get SetMusicPan => _module.SetMusicPan;
/// See [RaylibAudio.GetMusicTimeLength].
JSFunction get GetMusicTimeLength => _module.GetMusicTimeLength;
/// See [RaylibAudio.GetMusicTimePlayed].
JSFunction get GetMusicTimePlayed => _module.GetMusicTimePlayed;
/// See [RaylibAudio.LoadAudioStream].
JSFunction get LoadAudioStream => _module.LoadAudioStream;
/// See [RaylibAudio.IsAudioStreamValid].
JSFunction get IsAudioStreamValid => _module.IsAudioStreamValid;
/// See [RaylibAudio.UnloadAudioStream].
JSFunction get UnloadAudioStream => _module.UnloadAudioStream;
/// See [RaylibAudio.UpdateAudioStream].
JSFunction get UpdateAudioStream => _module.UpdateAudioStream;
/// See [RaylibAudio.IsAudioStreamProcessed].
JSFunction get IsAudioStreamProcessed => _module.IsAudioStreamProcessed;
/// See [RaylibAudio.PlayAudioStream].
JSFunction get PlayAudioStream => _module.PlayAudioStream;
/// See [RaylibAudio.PauseAudioStream].
JSFunction get PauseAudioStream => _module.PauseAudioStream;
/// See [RaylibAudio.ResumeAudioStream].
JSFunction get ResumeAudioStream => _module.ResumeAudioStream;
/// See [RaylibAudio.IsAudioStreamPlaying].
JSFunction get IsAudioStreamPlaying => _module.IsAudioStreamPlaying;
/// See [RaylibAudio.StopAudioStream].
JSFunction get StopAudioStream => _module.StopAudioStream;
/// See [RaylibAudio.SetAudioStreamVolume].
JSFunction get SetAudioStreamVolume => _module.SetAudioStreamVolume;
/// See [RaylibAudio.SetAudioStreamPitch].
JSFunction get SetAudioStreamPitch => _module.SetAudioStreamPitch;
/// See [RaylibAudio.SetAudioStreamPan].
JSFunction get SetAudioStreamPan => _module.SetAudioStreamPan;
/// See [RaylibAudio.SetAudioStreamBufferSizeDefault].
JSFunction get SetAudioStreamBufferSizeDefault => _module.SetAudioStreamBufferSizeDefault;
/// See [RaylibAudio.SetAudioStreamCallback].
JSFunction get SetAudioStreamCallback => _module.SetAudioStreamCallback;
/// See [RaylibAudio.AttachAudioStreamProcessor].
JSFunction get AttachAudioStreamProcessor => _module.AttachAudioStreamProcessor;
/// See [RaylibAudio.DetachAudioStreamProcessor].
JSFunction get DetachAudioStreamProcessor => _module.DetachAudioStreamProcessor;
/// See [RaylibAudio.AttachAudioMixedProcessor].
JSFunction get AttachAudioMixedProcessor => _module.AttachAudioMixedProcessor;
/// See [RaylibAudio.DetachAudioMixedProcessor].
JSFunction get DetachAudioMixedProcessor => _module.DetachAudioMixedProcessor;
