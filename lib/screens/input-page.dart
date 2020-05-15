import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardContent(
                      title: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardContent(
                      title: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: kLabelStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(height.toString(), style: kTextStyle),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'cm',
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 250,
                          activeColor: kBottomContainerColor,
                          inactiveColor: Color(0xFF8d8e98),
                          label: '$height.toDouble()',
                          onChanged: (double newValue) {
                            print('$newValue');
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
