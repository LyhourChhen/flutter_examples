import 'package:flutter/material.dart';
import "../components/rounded_button.dart";
import "../constants.dart";
import '../constants.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your Email")),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter your Password"),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RoundedButton(
                  onPressed: () => print("Hi"),
                  colour: Colors.green,
                  title: "Login"),
            ),
          ],
        ),
      ),
    );
  }
}
