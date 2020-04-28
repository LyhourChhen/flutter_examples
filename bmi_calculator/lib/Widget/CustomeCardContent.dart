import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "../constants.dart";

class CustomCardContent extends StatelessWidget {
  CustomCardContent(
      {@required this.feature,
      @required this.label,
      @required this.smallLabel,
      this.decrement,
      this.increment});

  final String label;
  int feature;
  final String smallLabel;
  Function decrement;
  Function increment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              feature.toString(),
              style: kTextStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              smallLabel,
              style: kLabelTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(FontAwesomeIcons.plus),
              onPressed: () => increment(),
              backgroundColor: Color(0xFF8D8E98),

//
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Icon(FontAwesomeIcons.minus),
              onPressed: () => decrement(),
              backgroundColor: Color(0xFF8D8E98),
//
            )
          ],
        )
      ],
    );
  }
}
