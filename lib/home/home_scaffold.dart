import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/app_controller.dart';
import '../effect_calc/effect_calculator_screen.dart';
import '../gas_pipe_calc/gas_pipe_calculator_screen.dart';
import '../navigation/destination.dart';
import '../settings/settings_screen.dart';
import 'home_screen.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(ref.watch(appProvider).currentDestination.title),
        leading: IconButton(
          onPressed: ref.watch(appProvider).currentDestination ==
                  Destination.home
              ? null
              : () =>
                  ref.read(appProvider.notifier).navigateTo(Destination.home),
          icon: const Icon(Icons.home_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(appProvider.notifier).navigateTo(Destination.settings),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ref.watch(appProvider).currentDestination.body,
    );
  }
}

extension ScaffoldBody on Destination {
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
