import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;

const appColorPalette = {
  "activeCardColor": 0xff1d1e33,
  "inactiveCardColor": 0xff111328,
  "bottomContainerColor": 0xffeb1555,
  "iconColor": 0xff8d8e98
};
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = Color(appColorPalette["inactiveCardColor"]);
  Color femaleCardColor = Color(appColorPalette["inactiveCardColor"]);

  //1 = male, 2 female
  void updateColor(Gender selectedGender) {
    //male card pressed
    if (selectedGender == Gender.male) {
      if (maleCardColor == Color(appColorPalette["inactiveCardColor"])) {
        maleCardColor = Color(appColorPalette["activeCardColor"]);
        femaleCardColor = Color(appColorPalette["inactiveCardColor"]);
      } else {
        maleCardColor = Color(appColorPalette["inactiveCardColor"]);
      }
    }
    //female card pressed
    if (selectedGender == Gender.female) {
      if (femaleCardColor == Color(appColorPalette["inactiveCardColor"])) {
        femaleCardColor = Color(appColorPalette["activeCardColor"]);
        maleCardColor = Color(appColorPalette["inactiveCardColor"]);
      } else {
        femaleCardColor = Color(appColorPalette["inactiveCardColor"]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //MAlE CARD
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                //FEMALE CARD
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(appColorPalette["activeCardColor"]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(appColorPalette["activeCardColor"]),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(appColorPalette["activeCardColor"]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(appColorPalette["bottomContainerColor"]),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
