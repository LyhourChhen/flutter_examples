import "package:flutter/material.dart";
import "./constants.dart";
import "./components/CustomCard.dart";
import "./components/BottonButton.dart";
import "./input_page.dart";

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI  Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: KLargeStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                dynamixColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "You are over Weight !!!",
                      style: KHeaderStyle,
                    ),
                    Text(
                      "19.0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                      ),
                    ),
                    Text(
                      "You should fucking eat more dog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ButtomBotton(
              onPress: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              Label: "Re Calculate",
            )
          ],
        ));
  }
}
