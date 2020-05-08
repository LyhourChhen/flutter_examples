// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:33 PM
// Project todoey
// ************************

import "package:flutter/material.dart";
import "./todo_tile_view.dart";
import "../modals/tasks.dart";
import "package:provider/provider.dart";
import "../modals/tasks_data.dart";

class TodoListView extends StatefulWidget {
//  final List<Task> tasks;
//  TodoListView({this.tasks});
  @override
  _TodoListViewState createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TodoListTiles(
                longPressCallback: () {
//                  delete here
                  taskData.deleteTask(task);
                },
                handleCheck: (value) {
                  taskData.updateTasks(taskData.tasks[index]);
                },
                title: taskData.tasks[index].name,
                isCheck: taskData.tasks[index].isDone);
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
