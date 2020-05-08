import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import "../components/rounded_button.dart";
import "../constants.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:modal_progress_hud/modal_progress_hud.dart";

class RegistrationScreen extends StatefulWidget {
  static String id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
//  this is where we init state here
  String email;
  String password;

  bool spinner = false;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: spinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: "logo",
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: "Email"),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: RoundedButton(
                    title: "Register",
                    colour: Colors.red,
                    onPressed: () async {
                      setState(() {
                        spinner = true;
                      });
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                          setState(() {
                            spinner = false;
                          });
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
