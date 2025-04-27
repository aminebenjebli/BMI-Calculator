import 'package:flutter/material.dart';
import 'package:healthapp/constants/constants.dart';

// ignore: camel_case_types
class iconContent extends StatelessWidget {
  const iconContent({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon; // = FontAwesomeIcons.mars;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(text, style: labelTextStyle),
      ],
    );
  }
}
