import 'package:equatable/equatable.dart';

class ConnectivityState extends Equatable {
  const ConnectivityState({this.isUserConnectedToTheInternet = false});

  final bool isUserConnectedToTheInternet;

  @override
  List<Object> get props => [isUserConnectedToTheInternet];

  ConnectivityState copyWith({bool? isUserConnectedToTheInternet}) {
    return ConnectivityState(
      isUserConnectedToTheInternet: isUserConnectedToTheInternet ?? this.isUserConnectedToTheInternet,
    );
  }

  factory ConnectivityState.empty() => const ConnectivityState();
}
