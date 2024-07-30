import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeView extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleTheme;

  const HomeView({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter Theme Application",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            FlutterSwitch(
              value: widget.isDarkMode,
              onToggle: widget.onToggleTheme,
            ),
          ],
        ),
      ),
    );
  }
}
