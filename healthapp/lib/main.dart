import 'package:flutter/material.dart';
import 'package:healthapp/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color: Colors.white),
        //   bodyMedium: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}
//123