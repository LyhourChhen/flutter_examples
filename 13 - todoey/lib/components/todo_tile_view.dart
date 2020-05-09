// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:34 PM
// Project todoey
// ************************

import "package:flutter/material.dart";

class TodoListTiles extends StatelessWidget {
  final bool isCheck;
  final String title;
  final Function handleCheck;
  final Function longPressCallback;

  TodoListTiles({
    this.isCheck,
    this.title,
    this.handleCheck,
    this.longPressCallback,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text("$title",
            style: TextStyle(
              decoration: isCheck ? TextDecoration.lineThrough : null,
            )),
        trailing: Checkbox(
          onChanged: handleCheck,
          value: isCheck,
        ));
  }
}

//class TodoListTiles extends StatefulWidget {
//  @override
//  _TodoListTilesState createState() => _TodoListTilesState();
//}
//
//class _TodoListTilesState extends State<TodoListTiles> {
//  bool isCheck = true;
//
//  void handleCheck(value) {
//    print("click me");
//    setState(() {
//      isCheck = !isCheck;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(
//        title: Text("Finished Flutter Course on Udemy",
//            style: TextStyle(
//              decoration: isCheck ? TextDecoration.lineThrough : null,
//            )),
//        trailing: Checkbox(
////        onChanged: ,
//          value: isCheck,
//        ));
//  }
//}

//class MyCheckbox extends StatelessWidget {
//  MyCheckbox({this.checkboxstate, this.handleCheck});
//  final bool checkboxstate;
//  final Function handleCheck;
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkboxstate,
//      onChanged: handleCheck,
//    );
//  }
//}
