import 'package:flutter/material.dart';

import 'card_button.dart';
import 'constants.dart';
import 'effect_calc/effect_calculator_screen.dart';
import 'gas_pipe_calc/gas_pipe_calculator_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          CardButton(
            // onPressed: null,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GasPipeCalculatorScreen(),
              ),
            ),
            text: "Gas Pipe Calculator",
            icon: Icons.bathtub_rounded,
          ),
          CardButton(
            // onPressed: null,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EffectCalculatorScreen(),
              ),
            ),
            text: "Effect Calculator",
            icon: Icons.gas_meter_rounded,
          ),
        ],
      ),
    );
  }
}
