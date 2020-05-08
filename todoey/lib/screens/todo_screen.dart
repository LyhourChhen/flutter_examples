// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 12:51 PM
// Project todoey
// ************************

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "../components/todo_list_view.dart";
import "./create_todo_modal.dart";
import "../modals/tasks.dart";

class TodoScreen extends StatefulWidget {
  static String id = "todo_screen";
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Task> tasks = [
    Task(name: "Do Breakfast"),
    Task(name: "Fix Car"),
    Task(name: "Finished Course on Udemy")
  ];

  void handleAddTodo(String todo) {
    print("hi");
    setState(() {
      tasks.add(Task(name: todo));
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => CreateTodo(
                  handleAddNewTodo: handleAddTodo,
                )),
      ),
      body: Container(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 60,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                    radius: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30))),
                child: TodoListView(
                  tasks: tasks,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
