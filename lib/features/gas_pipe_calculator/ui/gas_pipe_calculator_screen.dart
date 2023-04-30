import 'package:flutter/material.dart';

import 'components/gas_pipe_calculate_tab.dart';
import 'components/gas_pipe_history_tab.dart';

class GasPipeCalculatorScreen extends StatelessWidget {
  const GasPipeCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Calculate", icon: Icon(Icons.calculate_rounded)),
              Tab(text: "History", icon: Icon(Icons.history_rounded)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GasPipeCalculateTab(),
            GasPipeHistoryTab(),
          ],
        ),
      ),
    );
  }
}
