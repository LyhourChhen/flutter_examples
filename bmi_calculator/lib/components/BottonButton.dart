import "package:flutter/material.dart";
import "../constants.dart";

class ButtomBotton extends StatelessWidget {
  ButtomBotton({this.onPress, this.Label});
  final Function onPress;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        color: kBottonColorContainer,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottonContainterHeight,
        child: Center(
          child: Text(
            Label,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
