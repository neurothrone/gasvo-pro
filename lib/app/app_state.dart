import 'package:flutter/foundation.dart';

import '../navigation/destination.dart';

@immutable
class AppState {
  const AppState({
    this.currentDestination = Destination.home,
  });

  final Destination currentDestination;

  AppState copyWith({Destination? currentDestination}) {
    return AppState(
      currentDestination: currentDestination ?? Destination.home,
    );
  }

  @override
  int get hashCode => currentDestination.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppState && other.currentDestination == currentDestination;
  }
}
