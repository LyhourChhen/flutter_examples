import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Center(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("I am Rich with Flutter"),
              backgroundColor: Colors.blueGrey[900],
            ),
            backgroundColor: Colors.blueGrey[300],
            body: Center(
                child: Image(
              image: AssetImage('images/diamond.png'),
            ))),
      ),
    ));
