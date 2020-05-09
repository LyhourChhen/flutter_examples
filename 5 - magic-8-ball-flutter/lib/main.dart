import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(eightBallApp());

class eightBallApp extends StatefulWidget {
  @override
  _eightBallAppState createState() => _eightBallAppState();
}

class _eightBallAppState extends State<eightBallApp> {
  int pictureId = 1;

//  method / function
  void randomPic() {
    pictureId = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text("8 ball App",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      randomPic();
                    });
                  },
                  child: Image.asset('images/ball$pictureId.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    randomPic();
                  });
                },
                highlightColor: Colors.red,
                splashColor: Colors.yellow[200],
                color: Colors.red,
                child: Text(
                  "Roll",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
