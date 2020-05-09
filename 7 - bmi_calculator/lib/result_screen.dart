import "package:flutter/material.dart";
import "./constants.dart";
import "./components/CustomCard.dart";
import "./components/BottonButton.dart";
import "./input_page.dart";

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {@required this.Calcu,
      @required this.getInterpreter,
      @required this.getResult});
  final String Calcu;
  final String getResult;
  final String getInterpreter;
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
                      getResult,
                      style: KHeaderStyle,
                    ),
                    Text(
                      Calcu,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                      ),
                    ),
                    Text(
                      getInterpreter,
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
