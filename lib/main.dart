import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'app_state.dart';
import 'constants.dart';
import 'navigation/destination.dart';

void main() {
  runApp(const AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
          ),
        ),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(context.watch<AppState>().currentDestination.title),
              leading: IconButton(
                onPressed: context.watch<AppState>().currentDestination ==
                        Destination.home
                    ? null
                    : () =>
                        context.read<AppState>().navigateTo(Destination.home),
                icon: const Icon(Icons.home_rounded),
              ),
              actions: [
                IconButton(
                  onPressed: () =>
                      context.read<AppState>().navigateTo(Destination.settings),
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            body: context.watch<AppState>().currentDestination.body,
          );
        },
      ),
    );
  }
}
