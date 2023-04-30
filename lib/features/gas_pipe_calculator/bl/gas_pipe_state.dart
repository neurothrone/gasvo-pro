import 'package:flutter/foundation.dart';

@immutable
class GasPipeState {
  const GasPipeState({
    this.nps = 300,
    this.length = 2400.0,
    this.pressure = 4000.0,
  });

  final int nps;
  final double length;
  final double pressure;
}
