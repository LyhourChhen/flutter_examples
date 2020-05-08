// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:33 PM
// Project todoey
// ************************

import "package:flutter/material.dart";
import "./todo_tile_view.dart";
import "../modals/tasks.dart";

class TodoListView extends StatelessWidget {
  List<Task> tasks = [
    Task(name: "Do Breakfast"),
    Task(name: "Fix Car"),
    Task(name: "Finished Course on Udemy")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TodoListTiles(
          title: tasks[0].name,
          isCheck: true,
//          handleCheck: ,
        )
      ],
    );
  }
}
