// ignore_for_file: depend_on_referenced_packages

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_social_chat/domain/connectivity/i_connectivity_service.dart';
import 'package:flutter_social_chat/injection.dart';
import 'package:injectable/injectable.dart';

// It works well on the real devices, but
// there is a known issue that the package is not working properly in the simulators.

// "On iOS, the connectivity status might not update when WiFi status changes, this is a known issue that only affects simulators
// For details see https://github.com/fluttercommunity/plus_plugins/issues/479."

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
