import 'package:flutter/material.dart';

import '../effect_calc/effect_calculator_screen.dart';
import '../gas_pipe_calc/gas_pipe_calculator_screen.dart';
import '../home_screen.dart';
import '../settings/settings_screen.dart';

enum Destination {
  home("Home"),
  settings("Settings"),
  gasPipeCalculator("Gas Pipe Calculator"),
  effectCalculator("Effect Calculator");

  const Destination(this.title);

  final String title;

  Widget get body {
    switch (this) {
      case Destination.home:
        return const HomeScreen();
      case Destination.settings:
        return const SettingsScreen();
      case Destination.gasPipeCalculator:
        return const GasPipeCalculatorScreen();
      case Destination.effectCalculator:
        return const EffectCalculatorScreen();
    }
  }
}
