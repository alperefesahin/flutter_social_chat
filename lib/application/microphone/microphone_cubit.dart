import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/microphone/microphone_state.dart';
import 'package:flutter_social_chat/domain/microphone/i_microphone_service.dart';
import 'package:permission_handler/permission_handler.dart';

class MicrophoneCubit extends Cubit<MicrophoneState> {
  final IMicrophoneService _microphoneService;
  late StreamSubscription<PermissionStatus>? _microphonePermissionSubscription;

  MicrophoneCubit(this._microphoneService) : super(MicrophoneState.empty()) {
    _microphonePermissionSubscription =
        _microphoneService.microphoneStateChanges.listen(_listenMicrophoneStateChangesStream);
  }

  Future<void> _listenMicrophoneStateChangesStream(PermissionStatus microphonePermission) async {
    if (microphonePermission.isGranted || microphonePermission.isLimited) {
      emit(state.copyWith(isMicrophonePermissionGranted: true));
    } else if (microphonePermission.isDenied || microphonePermission.isRestricted) {
      final requestPermission = await _microphoneService.requestPermission();

      if (requestPermission.isGranted || requestPermission.isLimited) {
        emit(state.copyWith(isMicrophonePermissionGranted: true));
      } else {
        emit(state.copyWith(isMicrophonePermissionGranted: false));
      }
    } else {
      _microphoneService.openAppSettingsForTheMicrophonePermission();
    }
  }

  @override
  Future<void> close() async {
    await _microphonePermissionSubscription?.cancel();
    super.close();
  }
}
