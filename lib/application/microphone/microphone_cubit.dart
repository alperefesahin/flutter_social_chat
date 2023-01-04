// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_social_chat/domain/microphone/i_microphone_service.dart';
import 'package:flutter_social_chat/infrastructure/microphone/microphone_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'microphone_state.dart';
part 'microphone_cubit.freezed.dart';

@injectable
class MicrophoneCubit extends Cubit<MicrophoneState> {
  late final IMicrophoneService _microphoneService;
  late StreamSubscription<PermissionStatus>? _microphonePermissionSubscription;

  MicrophoneCubit() : super(MicrophoneState.empty()) {
    _microphoneService = MicrophoneService();

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
