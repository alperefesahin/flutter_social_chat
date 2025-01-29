import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/connectivity/connectivity_state.dart';
import 'package:flutter_social_chat/domain/connectivity/i_connectivity_service.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final IConnectivityService _connectivityService;
  late StreamSubscription? _connectivitySubscription;

  ConnectivityCubit(this._connectivityService) : super(ConnectivityState.empty()) {
    _connectivitySubscription =
        _connectivityService.connectivityStateChanges.listen(_listenConnectivityStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _connectivitySubscription?.cancel();
    super.close();
  }

  Future<void> _listenConnectivityStateChangesStream(ConnectivityResult connectivityResult) async {
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      emit(state.copyWith(isUserConnectedToTheInternet: true));
    } else {
      emit(state.copyWith(isUserConnectedToTheInternet: false));
    }
  }
}
