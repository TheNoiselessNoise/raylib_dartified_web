part of '../../../raylib_dartified_web.dart';

class RaylibAudio extends RaylibModuleWasm {
  /// Initialize audio device and context
  late final WF0<void> InitAudioDevice;
  /// Close the audio device and context
  late final WF0<void> CloseAudioDevice;
  /// Check if audio device has been initialized successfully
  late final WF0<bool> IsAudioDeviceReady;
  /// Set master volume (listener)
  late final WF1<void> SetMasterVolume;
  /// Get master volume (listener)
  late final WF0<double> GetMasterVolume;
  //// Load wave data from file
  late final WF2<void> LoadWave;
  /// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
  late final WF4<void> LoadWaveFromMemory;
  /// Checks if wave data is valid (data loaded and parameters)
  late final WF1<bool> IsWaveValid;
  /// Load sound from file
  late final WF2<void> LoadSound;
  /// Load sound from wave data
  late final WF2<void> LoadSoundFromWave;
  /// Create a new sound that shares the same sample data as the source sound, does not own the sound data
  late final WF2<void> LoadSoundAlias;
  /// Checks if a sound is valid (data loaded and buffers initialized)
  late final WF1<bool> IsSoundValid;
  /// Update sound buffer with new data (default data format: 32 bit float, stereo)
  late final WF3<void> UpdateSound;
  /// Unload wave data
  late final WF1<void> UnloadWave;
  /// Unload sound
  late final WF1<void> UnloadSound;
  /// Unload a sound alias (does not deallocate sample data)
  late final WF1<void> UnloadSoundAlias;
  /// Export wave data to file, returns true on success
  late final WF2<bool> ExportWave;
  /// Export wave sample data to code (.h), returns true on success
  late final WF2<bool> ExportWaveAsCode;
  /// Play a sound
  late final WF1<void> PlaySound;
  /// Stop playing a sound
  late final WF1<void> StopSound;
  /// Pause a sound
  late final WF1<void> PauseSound;
  /// Resume a paused sound
  late final WF1<void> ResumeSound;
  /// Check if a sound is currently playing
  late final WF1<bool> IsSoundPlaying;
  /// Set volume for a sound (1.0 is max level)
  late final WF2<void> SetSoundVolume;
  /// Set pitch for a sound (1.0 is base level)
  late final WF2<void> SetSoundPitch;
  /// Set pan for a sound (-1.0 left, 0.0 center, 1.0 right)
  late final WF2<void> SetSoundPan;
  /// Copy a wave to a new wave
  late final WF2<void> WaveCopy;
  /// Crop a wave to defined frames range
  late final WF3<void> WaveCrop;
  /// Convert wave data to desired format
  late final WF4<void> WaveFormat;
  /// Load samples data from wave as a 32bit float data array
  late final WF1<WasmMemoryPointer<RFloat>> LoadWaveSamples;
  /// Unload samples data loaded with LoadWaveSamples()
  late final WF1<void> UnloadWaveSamples;
  /// Load music stream from file
  late final WF2<void> LoadMusicStream;
  /// Load music stream from data
  late final WF4<void> LoadMusicStreamFromMemory;
  /// Checks if a music stream is valid (context and buffers initialized)
  late final WF1<bool> IsMusicValid;
  /// Unload music stream
  late final WF1<void> UnloadMusicStream;
  /// Start music playing
  late final WF1<void> PlayMusicStream;
  /// Check if music is playing
  late final WF1<bool> IsMusicStreamPlaying;
  /// Updates buffers for music streaming
  late final WF1<void> UpdateMusicStream;
  /// Stop music playing
  late final WF1<void> StopMusicStream;
  /// Pause music playing
  late final WF1<void> PauseMusicStream;
  /// Resume playing paused music
  late final WF1<void> ResumeMusicStream;
  /// Seek music to a position (in seconds)
  late final WF2<void> SeekMusicStream;
  /// Set volume for music (1.0 is max level)
  late final WF2<void> SetMusicVolume;
  /// Set pitch for a music (1.0 is base level)
  late final WF2<void> SetMusicPitch;
  /// Set pan for a music (0.5 is center)
  late final WF2<void> SetMusicPan;
  /// Get music time length (in seconds)
  late final WF1<double> GetMusicTimeLength;
  /// Get current music time played (in seconds)
  late final WF1<double> GetMusicTimePlayed;
  /// Load audio stream (to stream raw audio pcm data)
  late final WF4<void> LoadAudioStream;
  /// Checks if an audio stream is valid (buffers initialized)
  late final WF1<bool> IsAudioStreamValid;
  /// Unload audio stream and free memory
  late final WF1<void> UnloadAudioStream;
  /// Update audio stream buffers with data
  late final WF3<void> UpdateAudioStream;
  /// Check if any audio stream buffers requires refill
  late final WF1<bool> IsAudioStreamProcessed;
  /// Play audio stream
  late final WF1<void> PlayAudioStream;
  /// Pause audio stream
  late final WF1<void> PauseAudioStream;
  /// Resume audio stream
  late final WF1<void> ResumeAudioStream;
  /// Check if audio stream is playing
  late final WF1<bool> IsAudioStreamPlaying;
  /// Stop audio stream
  late final WF1<void> StopAudioStream;
  /// Set volume for audio stream (1.0 is max level)
  late final WF2<void> SetAudioStreamVolume;
  /// Set pitch for audio stream (1.0 is base level)
  late final WF2<void> SetAudioStreamPitch;
  /// Set pan for audio stream (0.5 is centered)
  late final WF2<void> SetAudioStreamPan;
  /// Default size for new audio streams
  late final WF1<void> SetAudioStreamBufferSizeDefault;
  /// Audio thread callback to request new data
  late final WF2<void> SetAudioStreamCallback;
  /// Attach audio stream processor to stream, receives the samples as 'float'
  late final WF2<void> AttachAudioStreamProcessor;
  /// Detach audio stream processor from stream
  late final WF2<void> DetachAudioStreamProcessor;
  /// Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'
  late final WF1<void> AttachAudioMixedProcessor;
  /// Detach audio stream processor from the entire audio pipeline
  late final WF1<void> DetachAudioMixedProcessor;

  RaylibAudio(super.rl) {
    InitAudioDevice                 = dwrap0('InitAudioDevice');
    CloseAudioDevice                = dwrap0('CloseAudioDevice');
    IsAudioDeviceReady              = dwrap0('IsAudioDeviceReady');
    SetMasterVolume                 = dwrap1('SetMasterVolume');
    GetMasterVolume                 = dwrap0('GetMasterVolume');
    LoadWave                        = swrap1('LoadWave');
    LoadWaveFromMemory              = swrap3('LoadWaveFromMemory');
    IsWaveValid                     = dwrap1('IsWaveValid');
    LoadSound                       = swrap1('LoadSound');
    LoadSoundFromWave               = swrap1('LoadSoundFromWave');
    LoadSoundAlias                  = swrap1('LoadSoundAlias');
    IsSoundValid                    = dwrap1('IsSoundValid');
    UpdateSound                     = dwrap3('UpdateSound');
    UnloadWave                      = dwrap1('UnloadWave');
    UnloadSound                     = dwrap1('UnloadSound');
    UnloadSoundAlias                = dwrap1('UnloadSoundAlias');
    ExportWave                      = dwrap2('ExportWave');
    ExportWaveAsCode                = dwrap2('ExportWaveAsCode');
    PlaySound                       = dwrap1('PlaySound');
    StopSound                       = dwrap1('StopSound');
    PauseSound                      = dwrap1('PauseSound');
    ResumeSound                     = dwrap1('ResumeSound');
    IsSoundPlaying                  = dwrap1('IsSoundPlaying');
    SetSoundVolume                  = dwrap2('SetSoundVolume');
    SetSoundPitch                   = dwrap2('SetSoundPitch');
    SetSoundPan                     = dwrap2('SetSoundPan');
    WaveCopy                        = swrap1('WaveCopy');
    WaveCrop                        = dwrap3('WaveCrop');
    WaveFormat                      = dwrap4('WaveFormat');
    LoadWaveSamples                 = pwrap1('LoadWaveSamples');
    UnloadWaveSamples               = dwrap1('UnloadWaveSamples');
    LoadMusicStream                 = swrap1('LoadMusicStream');
    LoadMusicStreamFromMemory       = swrap3('LoadMusicStreamFromMemory');
    IsMusicValid                    = dwrap1('IsMusicValid');
    UnloadMusicStream               = dwrap1('UnloadMusicStream');
    PlayMusicStream                 = dwrap1('PlayMusicStream');
    IsMusicStreamPlaying            = dwrap1('IsMusicStreamPlaying');
    UpdateMusicStream               = dwrap1('UpdateMusicStream');
    StopMusicStream                 = dwrap1('StopMusicStream');
    PauseMusicStream                = dwrap1('PauseMusicStream');
    ResumeMusicStream               = dwrap1('ResumeMusicStream');
    SeekMusicStream                 = dwrap2('SeekMusicStream');
    SetMusicVolume                  = dwrap2('SetMusicVolume');
    SetMusicPitch                   = dwrap2('SetMusicPitch');
    SetMusicPan                     = dwrap2('SetMusicPan');
    GetMusicTimeLength              = dwrap1('GetMusicTimeLength');
    GetMusicTimePlayed              = dwrap1('GetMusicTimePlayed');
    LoadAudioStream                 = swrap3('LoadAudioStream');
    IsAudioStreamValid              = dwrap1('IsAudioStreamValid');
    UnloadAudioStream               = dwrap1('UnloadAudioStream');
    UpdateAudioStream               = dwrap3('UpdateAudioStream');
    IsAudioStreamProcessed          = dwrap1('IsAudioStreamProcessed');
    PlayAudioStream                 = dwrap1('PlayAudioStream');
    PauseAudioStream                = dwrap1('PauseAudioStream');
    ResumeAudioStream               = dwrap1('ResumeAudioStream');
    IsAudioStreamPlaying            = dwrap1('IsAudioStreamPlaying');
    StopAudioStream                 = dwrap1('StopAudioStream');
    SetAudioStreamVolume            = dwrap2('SetAudioStreamVolume');
    SetAudioStreamPitch             = dwrap2('SetAudioStreamPitch');
    SetAudioStreamPan               = dwrap2('SetAudioStreamPan');
    SetAudioStreamBufferSizeDefault = dwrap1('SetAudioStreamBufferSizeDefault');
    SetAudioStreamCallback          = dwrap2('SetAudioStreamCallback');
    AttachAudioStreamProcessor      = dwrap2('AttachAudioStreamProcessor');
    DetachAudioStreamProcessor      = dwrap2('DetachAudioStreamProcessor');
    AttachAudioMixedProcessor       = dwrap1('AttachAudioMixedProcessor');
    DetachAudioMixedProcessor       = dwrap1('DetachAudioMixedProcessor');
  }
}