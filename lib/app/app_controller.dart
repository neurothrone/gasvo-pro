import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../navigation/destination.dart';
import 'app_state.dart';

final appProvider =
    StateNotifierProvider.autoDispose<AppController, AppState>((ref) {
  return AppController(
    const AppState(
      currentDestination: Destination.home,
    ),
  );
});

class AppController extends StateNotifier<AppState> {
  AppController(AppState state) : super(state);

  void navigateTo(Destination destination) {
    state = state.copyWith(
      currentDestination: destination,
    );
  }
}
