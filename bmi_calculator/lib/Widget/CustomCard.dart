import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
//  create Constructor
  ReusableCard({@required this.dynamixColor, this.cardChild});
  final Color dynamixColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
          color: dynamixColor, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
//      height: 200,
//      width: 170,
    );
  }
}
