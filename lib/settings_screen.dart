import 'package:flutter/material.dart';

/// The theme chosen by the user. A ValueNotifier holds one value and tells
/// whoever listens when it changes: WeatherApp listens, in main.dart.
final themeMode = ValueNotifier(ThemeMode.system);

/// Settings tab.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Definições')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Tema', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          // TODO 4: a SegmentedButton<ThemeMode> with Sistema, Claro and
          // Escuro, that shows themeMode.value and changes it.
        ],
      ),
    );
  }
}
