import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: reusableCard(
                      dynamixColor: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      dynamixColor: Color(0xFF1D1E33),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: reusableCard(
                dynamixColor: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: reusableCard(
                      dynamixColor: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      dynamixColor: Color(0xFF1D1E33),
                    ),
                  )
                ],
              ),
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class reusableCard extends StatelessWidget {
//  create Constructor
  reusableCard({@required this.dynamixColor});
  Color dynamixColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: dynamixColor, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
//      height: 200,
//      width: 170,
    );
  }
}
