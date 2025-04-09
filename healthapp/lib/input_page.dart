import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/cards.dart';
import 'package:healthapp/card_content.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Male card was tapped");
                    },
                    child: const ReusableCard(
                        colour: activeCardColour,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE',
                        )),
                  ),
                ),
                const Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: iconContent(
                            icon: FontAwesomeIcons.venus, text: 'FEMALE'))),
              ],
            )),
            const Expanded(child: ReusableCard(colour: activeCardColour)),
            const Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activeCardColour)),
                Expanded(child: ReusableCard(colour: activeCardColour)),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ],
        ));
  }
}
