import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/app_controller.dart';
import '../card_button.dart';
import '../navigation/destination.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: [
        CardButton(
          onPressed: () => ref
              .read(appProvider.notifier)
              .navigateTo(Destination.gasPipeCalculator),
          text: "Gas Pipe Calculator",
          icon: Icons.bathtub_rounded,
        ),
        CardButton(
          onPressed: () => ref
              .read(appProvider.notifier)
              .navigateTo(Destination.effectCalculator),
          text: "Effect Calculator",
          icon: Icons.gas_meter_rounded,
        ),
      ],
    );
  }
}
