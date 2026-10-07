import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forecast_screen.dart';

void main() {
  runApp(const WeatherApp());
}

/// App root: one MaterialApp per app, with the theme and the first screen.
///
/// TODO 2: MaterialApp.router with the router from router.dart, instead of
/// home.
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Açores',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const ForecastScreen(),
    );
  }
}
