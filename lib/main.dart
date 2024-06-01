import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      brightness: MediaQuery.platformBrightnessOf(context),
      seedColor: Colors.indigo,
    );
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF051F4B),
        scaffoldBackgroundColor: Color(0xFF030E23),
      ),
      home: InputPage(),
    );
  }
}


