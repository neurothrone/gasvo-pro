import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'gas_pipe_state.dart';

final gasPipeProvider =
    StateNotifierProvider.autoDispose<GasPipeController, GasPipeState>((ref) {
  return GasPipeController(
    GasPipeState(
      nps: 300,
      length: 2400.0,
      pressure: 4000.0,
    ),
  );
});

class GasPipeController extends StateNotifier<GasPipeState> {
  GasPipeController(GasPipeState state) : super(state);

  double calculate() {
    return state.length * state.nps * state.pressure;
  }
}
