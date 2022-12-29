// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_production_app/domain/connectivity/i_connectivity_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

@lazySingleton
class ConnectivityCubit extends Cubit<ConnectivityState> {
  late StreamSubscription? _connectivityStateChanges;
  late final IConnectivityService _connectivityHandler;

  ConnectivityCubit() : super(ConnectivityState.empty()) {
    _connectivityHandler = getIt<IConnectivityService>();

    _connectivityStateChanges =
        _connectivityHandler.connectivityStateChanges.listen(_listenConnectivityStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _connectivityStateChanges?.cancel();
    super.close();
  }

  Future<void> _listenConnectivityStateChangesStream(ConnectivityResult connectivityResult) async {
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      emit(state.copyWith(isUserConnectedToTheInternet: true));
    } else if (connectivityResult == ConnectivityResult.none) {
      emit(state.copyWith(isUserConnectedToTheInternet: false));
    }
  }
}
