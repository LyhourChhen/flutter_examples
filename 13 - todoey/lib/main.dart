import 'package:flutter/material.dart';
import "./screens/todo_screen.dart";
import "package:provider/provider.dart";
import "modals/tasks_data.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        initialRoute: "/todo",
        routes: {
          "/todo": (context) => TodoScreen(),
        },
      ),
    );
  }
}
