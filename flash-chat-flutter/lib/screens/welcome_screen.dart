import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import "../components/rounded_button.dart";
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
//      upperBound: 100,
    );

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

//    animation here
//    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    super.initState();
//    animation.addStatusListener((status) {
//      if (status == AnimationStatus.completed) {
//        controller.reverse(from: 1);
//      } else if (status == AnimationStatus.dismissed) {
//        controller.forward();
//      }
//    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.red.withOpacity(controller.value),
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
//                    height: animation.value * 100,
                    height: 70,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ["Flash Chat"],
                  textStyle:
                      TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: "Login",
              colour: Colors.lightBlueAccent,
              onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
            RoundedButton(
              title: "SignUp",
              colour: Colors.lightBlueAccent,
              onPressed: () =>
                  Navigator.pushNamed(context, RegistrationScreen.id),
            ),
          ],
        ),
      ),
    );
  }
}
