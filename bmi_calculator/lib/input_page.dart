import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "./components/CustomCard.dart";
import "./components/CustomCardWithIcon.dart";
import "./constants.dart";
import "./components/CustomeCardContent.dart";
import "./result_screen.dart";
import "./components/BottonButton.dart";

enum GENDER { male, female }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  Method 1
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;
//  1 : male, 2 : female
  void updateColor(GENDER genderSelector) {
    if (genderSelector == GENDER.male) {
      if (maleCardColor == kInActiveCardColor) {
        maleCardColor = kActiveCardColor;
      } else {
        maleCardColor = kInActiveCardColor;
      }
    }
    if (genderSelector == GENDER.female) {
      if (femaleCardColor == kInActiveCardColor) {
        femaleCardColor = kActiveCardColor;
      } else {
        femaleCardColor = kInActiveCardColor;
      }
    }
  }

//  Method 2
  GENDER gender;
  int height = 180;
  int weight = 70;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GENDER.male;
                      });
                    },
                    dynamixColor: gender == GENDER.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = GENDER.female;
                      });
                    },
                    dynamixColor: gender == GENDER.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.marsStrokeH,
                      text: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              dynamixColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kTextStyle),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "CM",
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        overlayColor: Colors.purpleAccent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 250,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    dynamixColor: kActiveCardColor,
                    cardChild: CustomCardContent(
                      feature: weight,
                      label: "WEIGHT",
                      smallLabel: "KG",
                      increment: () {
                        setState(() {
                          weight++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    dynamixColor: kActiveCardColor,
                    cardChild: CustomCardContent(
                      feature: age,
                      label: "AGE",
                      smallLabel: "OLD",
                      increment: () {
                        setState(() {
                          age++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          ButtomBotton(
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen()));
            },
            Label: "Result",
          )
        ],
      ),
    );
  }
}
