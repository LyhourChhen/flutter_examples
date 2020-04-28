import "package:flutter/material.dart";
import "../constants.dart";

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.text});
  final icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabelTextStyle)
      ],
    );
  }
}
