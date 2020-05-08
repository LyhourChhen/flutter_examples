// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:34 PM
// Project todoey
// ************************

import "package:flutter/material.dart";

class TodoListTiles extends StatefulWidget {
  @override
  _TodoListTilesState createState() => _TodoListTilesState();
}

class _TodoListTilesState extends State<TodoListTiles> {
  bool isCheck = true;

  void handleCheck(value) {
    print("click me");
    setState(() {
      isCheck = !isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Finished Flutter Course on Udemy",
          style: TextStyle(
            decoration: isCheck ? TextDecoration.lineThrough : null,
          )),
      trailing: MyCheckbox(
        checkboxstate: isCheck,
        handleCheck: handleCheck,
      ),
    );
  }
}

class MyCheckbox extends StatelessWidget {
  MyCheckbox({this.checkboxstate, this.handleCheck});
  final bool checkboxstate;
  final Function handleCheck;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxstate,
      onChanged: handleCheck,
    );
  }
}
