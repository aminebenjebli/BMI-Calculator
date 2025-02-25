import 'package:flutter/material.dart';
import 'package:healthapp/input_page.dart';
import 'package:healthapp/signin_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: SigninPage(),
    );
  }
}
//123