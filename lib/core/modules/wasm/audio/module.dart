part of '../../../raylib_dartified_web.dart';

class RaylibAudio extends RaylibModuleWasm {
  /// Initialize audio device and context
  late final JSFunction InitAudioDevice;
  /// Close the audio device and context
  late final JSFunction CloseAudioDevice;
  /// Check if audio device has been initialized successfully
  late final JSFunction IsAudioDeviceReady;
  /// Set master volume (listener)
  late final JSFunction SetMasterVolume;
  /// Get master volume (listener)
  late final JSFunction GetMasterVolume;
  /// Load wave data from file
  late final JSFunction LoadWave;
  /// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
  late final JSFunction LoadWaveFromMemory;
  /// Checks if wave data is valid (data loaded and parameters)
  late final JSFunction IsWaveValid;
  /// Load sound from file
  late final JSFunction LoadSound;
  /// Load sound from wave data
  late final JSFunction LoadSoundFromWave;
  /// Create a new sound that shares the same sample data as the source sound, does not own the sound data
  late final JSFunction LoadSoundAlias;
  /// Checks if a sound is valid (data loaded and buffers initialized)
  late final JSFunction IsSoundValid;
  /// Update sound buffer with new data
  late final JSFunction UpdateSound;
  /// Unload wave data
  late final JSFunction UnloadWave;
  /// Unload sound
  late final JSFunction UnloadSound;
  /// Unload a sound alias (does not deallocate sample data)
  late final JSFunction UnloadSoundAlias;
  /// Export wave data to file, returns true on success
  late final JSFunction ExportWave;
  /// Export wave sample data to code (.h), returns true on success
  late final JSFunction ExportWaveAsCode;
  /// Play a sound
  late final JSFunction PlaySound;
  /// Stop playing a sound
  late final JSFunction StopSound;
  /// Pause a sound
  late final JSFunction PauseSound;
  /// Resume a paused sound
  late final JSFunction ResumeSound;
  /// Check if a sound is currently playing
  late final JSFunction IsSoundPlaying;
  /// Set volume for a sound (1.0 is max level)
  late final JSFunction SetSoundVolume;
  /// Set pitch for a sound (1.0 is base level)
  late final JSFunction SetSoundPitch;
  /// Set pan for a sound (0.5 is center)
  late final JSFunction SetSoundPan;
  /// Copy a wave to a new wave
  late final JSFunction WaveCopy;
  /// Crop a wave to defined frames range
  late final JSFunction WaveCrop;
  /// Convert wave data to desired format
  late final JSFunction WaveFormat;
  /// Load samples data from wave as a 32bit float data array
  late final JSFunction LoadWaveSamples;
  /// Unload samples data loaded with LoadWaveSamples()
  late final JSFunction UnloadWaveSamples;
  /// Load music stream from file
  late final JSFunction LoadMusicStream;
  /// Load music stream from data
  late final JSFunction LoadMusicStreamFromMemory;
  /// Checks if a music stream is valid (context and buffers initialized)
  late final JSFunction IsMusicValid;
  /// Unload music stream
  late final JSFunction UnloadMusicStream;
  /// Start music playing
  late final JSFunction PlayMusicStream;
  /// Check if music is playing
  late final JSFunction IsMusicStreamPlaying;
  /// Updates buffers for music streaming
  late final JSFunction UpdateMusicStream;
  /// Stop music playing
  late final JSFunction StopMusicStream;
  /// Pause music playing
  late final JSFunction PauseMusicStream;
  /// Resume playing paused music
  late final JSFunction ResumeMusicStream;
  /// Seek music to a position (in seconds)
  late final JSFunction SeekMusicStream;
  /// Set volume for music (1.0 is max level)
  late final JSFunction SetMusicVolume;
  /// Set pitch for a music (1.0 is base level)
  late final JSFunction SetMusicPitch;
  /// Set pan for a music (0.5 is center)
  late final JSFunction SetMusicPan;
  /// Get music time length (in seconds)
  late final JSFunction GetMusicTimeLength;
  /// Get current music time played (in seconds)
  late final JSFunction GetMusicTimePlayed;
  /// Load audio stream (to stream raw audio pcm data)
  late final JSFunction LoadAudioStream;
  /// Checks if an audio stream is valid (buffers initialized)
  late final JSFunction IsAudioStreamValid;
  /// Unload audio stream and free memory
  late final JSFunction UnloadAudioStream;
  /// Update audio stream buffers with data
  late final JSFunction UpdateAudioStream;
  /// Check if any audio stream buffers requires refill
  late final JSFunction IsAudioStreamProcessed;
  /// Play audio stream
  late final JSFunction PlayAudioStream;
  /// Pause audio stream
  late final JSFunction PauseAudioStream;
  /// Resume audio stream
  late final JSFunction ResumeAudioStream;
  /// Check if audio stream is playing
  late final JSFunction IsAudioStreamPlaying;
  /// Stop audio stream
  late final JSFunction StopAudioStream;
  /// Set volume for audio stream (1.0 is max level)
  late final JSFunction SetAudioStreamVolume;
  /// Set pitch for audio stream (1.0 is base level)
  late final JSFunction SetAudioStreamPitch;
  /// Set pan for audio stream (0.5 is centered)
  late final JSFunction SetAudioStreamPan;
  /// Default size for new audio streams
  late final JSFunction SetAudioStreamBufferSizeDefault;
  /// Audio thread callback to request new data
  late final JSFunction SetAudioStreamCallback;
  /// Attach audio stream processor to stream, receives the samples as 'float'
  late final JSFunction AttachAudioStreamProcessor;
  /// Detach audio stream processor from stream
  late final JSFunction DetachAudioStreamProcessor;
  /// Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'
  late final JSFunction AttachAudioMixedProcessor;
  /// Detach audio stream processor from the entire audio pipeline
  late final JSFunction DetachAudioMixedProcessor;

  RaylibAudio(super.rl) {
    InitAudioDevice                 = _module.dwrap('InitAudioDevice',                 n0, rv);
    CloseAudioDevice                = _module.dwrap('CloseAudioDevice',                n0, rv);
    IsAudioDeviceReady              = _module.dwrap('IsAudioDeviceReady',              n0, rn);
    SetMasterVolume                 = _module.dwrap('SetMasterVolume',                 n1, rv);
    GetMasterVolume                 = _module.dwrap('GetMasterVolume',                 n0, rn);
    LoadWave                        = _module.dwrap('LoadWave',                        n2, rv);
    LoadWaveFromMemory              = _module.dwrap('LoadWaveFromMemory',              n4, rv);
    IsWaveValid                     = _module.dwrap('IsWaveValid',                     n1, rn);
    LoadSound                       = _module.dwrap('LoadSound',                       n2, rv);
    LoadSoundFromWave               = _module.dwrap('LoadSoundFromWave',               n2, rv);
    LoadSoundAlias                  = _module.dwrap('LoadSoundAlias',                  n2, rv);
    IsSoundValid                    = _module.dwrap('IsSoundValid',                    n1, rn);
    UpdateSound                     = _module.dwrap('UpdateSound',                     n3, rv);
    UnloadWave                      = _module.dwrap('UnloadWave',                      n1, rv);
    UnloadSound                     = _module.dwrap('UnloadSound',                     n1, rv);
    UnloadSoundAlias                = _module.dwrap('UnloadSoundAlias',                n1, rv);
    ExportWave                      = _module.dwrap('ExportWave',                      n2, rn);
    ExportWaveAsCode                = _module.dwrap('ExportWaveAsCode',                n2, rn);
    PlaySound                       = _module.dwrap('PlaySound',                       n1, rv);
    StopSound                       = _module.dwrap('StopSound',                       n1, rv);
    PauseSound                      = _module.dwrap('PauseSound',                      n1, rv);
    ResumeSound                     = _module.dwrap('ResumeSound',                     n1, rv);
    IsSoundPlaying                  = _module.dwrap('IsSoundPlaying',                  n1, rn);
    SetSoundVolume                  = _module.dwrap('SetSoundVolume',                  n2, rv);
    SetSoundPitch                   = _module.dwrap('SetSoundPitch',                   n2, rv);
    SetSoundPan                     = _module.dwrap('SetSoundPan',                     n2, rv);
    WaveCopy                        = _module.dwrap('WaveCopy',                        n2, rv);
    WaveCrop                        = _module.dwrap('WaveCrop',                        n3, rv);
    WaveFormat                      = _module.dwrap('WaveFormat',                      n4, rv);
    LoadWaveSamples                 = _module.dwrap('LoadWaveSamples',                 n1, rn);
    UnloadWaveSamples               = _module.dwrap('UnloadWaveSamples',               n1, rv);
    LoadMusicStream                 = _module.dwrap('LoadMusicStream',                 n2, rv);
    LoadMusicStreamFromMemory       = _module.dwrap('LoadMusicStreamFromMemory',       n4, rv);
    IsMusicValid                    = _module.dwrap('IsMusicValid',                    n1, rn);
    UnloadMusicStream               = _module.dwrap('UnloadMusicStream',               n1, rv);
    PlayMusicStream                 = _module.dwrap('PlayMusicStream',                 n1, rv);
    IsMusicStreamPlaying            = _module.dwrap('IsMusicStreamPlaying',            n1, rn);
    UpdateMusicStream               = _module.dwrap('UpdateMusicStream',               n1, rv);
    StopMusicStream                 = _module.dwrap('StopMusicStream',                 n1, rv);
    PauseMusicStream                = _module.dwrap('PauseMusicStream',                n1, rv);
    ResumeMusicStream               = _module.dwrap('ResumeMusicStream',               n1, rv);
    SeekMusicStream                 = _module.dwrap('SeekMusicStream',                 n2, rv);
    SetMusicVolume                  = _module.dwrap('SetMusicVolume',                  n2, rv);
    SetMusicPitch                   = _module.dwrap('SetMusicPitch',                   n2, rv);
    SetMusicPan                     = _module.dwrap('SetMusicPan',                     n2, rv);
    GetMusicTimeLength              = _module.dwrap('GetMusicTimeLength',              n1, rn);
    GetMusicTimePlayed              = _module.dwrap('GetMusicTimePlayed',              n1, rn);
    LoadAudioStream                 = _module.dwrap('LoadAudioStream',                 n4, rv);
    IsAudioStreamValid              = _module.dwrap('IsAudioStreamValid',              n1, rn);
    UnloadAudioStream               = _module.dwrap('UnloadAudioStream',               n1, rv);
    UpdateAudioStream               = _module.dwrap('UpdateAudioStream',               n3, rv);
    IsAudioStreamProcessed          = _module.dwrap('IsAudioStreamProcessed',          n1, rn);
    PlayAudioStream                 = _module.dwrap('PlayAudioStream',                 n1, rv);
    PauseAudioStream                = _module.dwrap('PauseAudioStream',                n1, rv);
    ResumeAudioStream               = _module.dwrap('ResumeAudioStream',               n1, rv);
    IsAudioStreamPlaying            = _module.dwrap('IsAudioStreamPlaying',            n1, rn);
    StopAudioStream                 = _module.dwrap('StopAudioStream',                 n1, rv);
    SetAudioStreamVolume            = _module.dwrap('SetAudioStreamVolume',            n2, rv);
    SetAudioStreamPitch             = _module.dwrap('SetAudioStreamPitch',             n2, rv);
    SetAudioStreamPan               = _module.dwrap('SetAudioStreamPan',               n2, rv);
    SetAudioStreamBufferSizeDefault = _module.dwrap('SetAudioStreamBufferSizeDefault', n1, rv);
    SetAudioStreamCallback          = _module.dwrap('SetAudioStreamCallback',          n2, rv);
    AttachAudioStreamProcessor      = _module.dwrap('AttachAudioStreamProcessor',      n2, rv);
    DetachAudioStreamProcessor      = _module.dwrap('DetachAudioStreamProcessor',      n2, rv);
    AttachAudioMixedProcessor       = _module.dwrap('AttachAudioMixedProcessor',       n1, rv);
    DetachAudioMixedProcessor       = _module.dwrap('DetachAudioMixedProcessor',       n1, rv);
  }
}