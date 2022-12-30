import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IConnectivityService {
  Stream<ConnectivityResult> get connectivityStateChanges;
}
