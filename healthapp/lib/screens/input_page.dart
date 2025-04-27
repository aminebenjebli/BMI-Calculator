import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/widgets/cards.dart';
import 'package:healthapp/widgets/card_content.dart';
import 'package:healthapp/constants/constants.dart';
import 'package:healthapp/models/gender.dart';
import 'package:healthapp/screens/results_page.dart';
import 'package:healthapp/widgets/round_button.dart';
import 'package:healthapp/widgets/bottom_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int age = 18;
  int height = 180;
  Gender? selectedGender;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        colour: selectedGender == Gender.male
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: const iconContent(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE',
                        )),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: const iconContent(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE')),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('HEIGHT', style: labelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: numberTextStyle),
                      const Text('cm', style: labelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: const Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(weight.toString(), style: numberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              // Decrease weight
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              // Increase weight
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            const BottomButtonNavigation(),
          ],
        ));
  }
}
