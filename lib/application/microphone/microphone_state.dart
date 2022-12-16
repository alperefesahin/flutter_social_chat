part of 'microphone_cubit.dart';

@freezed
class MicrophoneState with _$MicrophoneState {
  const factory MicrophoneState({
    required bool isMicrophonePermissionGranted,
  }) = _MicrophoneState;

  factory MicrophoneState.empty() => const MicrophoneState(
        isMicrophonePermissionGranted: false,
      );
}
