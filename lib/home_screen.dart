import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'app_state.dart';
import 'card_button.dart';
import 'navigation/destination.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: [
        CardButton(
          onPressed: () => context
              .read<AppState>()
              .navigateTo(Destination.gasPipeCalculator),
          text: "Gas Pipe Calculator",
          icon: Icons.bathtub_rounded,
        ),
        CardButton(
          onPressed: () =>
              context.read<AppState>().navigateTo(Destination.effectCalculator),
          text: "Effect Calculator",
          icon: Icons.gas_meter_rounded,
        ),
      ],
    );
  }
}
