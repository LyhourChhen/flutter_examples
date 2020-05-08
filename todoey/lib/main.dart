import 'package:flutter/material.dart';
import "./screens/todo_screen.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/todo",
      routes: {
        "/todo": (context) => TodoScreen(),
      },
    );
  }
}
