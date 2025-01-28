import 'package:equatable/equatable.dart';

class MicrophoneState extends Equatable {
  final bool isMicrophonePermissionGranted;

  const MicrophoneState({this.isMicrophonePermissionGranted = false});

  @override
  List<Object> get props => [isMicrophonePermissionGranted];

  MicrophoneState copyWith({bool? isMicrophonePermissionGranted}) {
    return MicrophoneState(
      isMicrophonePermissionGranted: isMicrophonePermissionGranted ?? this.isMicrophonePermissionGranted,
    );
  }

  factory MicrophoneState.empty() => const MicrophoneState();
}
