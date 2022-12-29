part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({required bool isUserConnectedToTheInternet}) =
      _ConnectivityState;

  factory ConnectivityState.empty() => const ConnectivityState(isUserConnectedToTheInternet: false);
}
