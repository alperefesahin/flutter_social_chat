// ignore_for_file: depend_on_referenced_packages

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_production_app/domain/connectivity/i_connectivity_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IConnectivityService)
class ConnectivityHandler implements IConnectivityService {
  final connectivity = getIt<Connectivity>();

  @override
  Stream<ConnectivityResult> get connectivityStateChanges {
    return connectivity.onConnectivityChanged.map(
      (connectivityResult) {
        if (connectivityResult == ConnectivityResult.mobile) {
          return ConnectivityResult.mobile;
        } else if (connectivityResult == ConnectivityResult.wifi) {
          return ConnectivityResult.wifi;
        } else {
          return ConnectivityResult.none;
        }
      },
    );
  }
}
