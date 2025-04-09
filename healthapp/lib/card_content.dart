import 'package:flutter/material.dart';

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
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
