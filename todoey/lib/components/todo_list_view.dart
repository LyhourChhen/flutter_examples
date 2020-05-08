// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:33 PM
// Project todoey
// ************************

import "package:flutter/material.dart";
import "./todo_tile_view.dart";
import "../modals/tasks.dart";

class TodoListView extends StatefulWidget {
  final List<Task> tasks;
  TodoListView({this.tasks});
  @override
  _TodoListViewState createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoListTiles(
            handleCheck: (value) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
            title: widget.tasks[index].name,
            isCheck: widget.tasks[index].isDone);
      },
      itemCount: widget.tasks.length,
    );
  }
}
