import 'package:flutter/material.dart';

enum NominalPipeSizeChoice { first }

enum PressureChoice {
  thirty("30"),
  hundred("100"),
  fourThousand("4000"),
  custom("Custom");

  const PressureChoice(this.label);

  final String label;
}

class GasPipeCalculateTab extends StatefulWidget {
  const GasPipeCalculateTab({Key? key}) : super(key: key);

  @override
  State<GasPipeCalculateTab> createState() => _GasPipeCalculateTabState();
}

class _GasPipeCalculateTabState extends State<GasPipeCalculateTab> {
  final _lengthController = TextEditingController();

  PressureChoice selectedPressure = PressureChoice.thirty;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Text("Nominal Pipe Size - DN (mm)"),
                const SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Row(
                    children: const [
                      Text("Learn more about NPS standards"),
                      Icon(Icons.link),
                    ],
                  ),
                ),
                const Text(
                  "TODO: Picker",
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: _lengthController,
                  decoration: const InputDecoration(
                    hintText: "Length (m)",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a length";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "TODO: NPS Link",
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 10.0),
                const Text("Pressure (mbar)"),
                const SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SegmentedButton(
                      segments: PressureChoice.values
                          .map((choice) => ButtonSegment(
                              value: choice, label: Text(choice.label)))
                          .toList(),
                      selected: <PressureChoice>{selectedPressure},
                      onSelectionChanged: (Set<PressureChoice> newSelection) {
                        // By default there is only a single segment that can be
                        // selected at one time, so its value is always the first
                        // item in the selected set.
                        setState(() => selectedPressure = newSelection.first);
                      },
                      showSelectedIcon: false,
                      style: ButtonStyle(
                        animationDuration: const Duration(milliseconds: 100),
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (Set<MaterialState> states) {
                          return states.contains(MaterialState.selected)
                              ? Colors.yellow
                              : Colors.brown;
                        }),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "TODO: Picker / Text Field",
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "TODO: Calculate Button",
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "TODO: Results",
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
