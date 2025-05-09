import 'package:flutter/material.dart';
import 'package:healthapp/constants/constants.dart';
import 'package:healthapp/screens/results_page.dart';

class BottomButtonNavigation extends StatelessWidget {
  const BottomButtonNavigation(
      {super.key, required this.onTap, required this.buttonTitle});

  final Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
