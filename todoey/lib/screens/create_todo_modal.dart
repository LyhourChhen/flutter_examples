// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:47 PM
// Project todoey
// ************************
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../modals/tasks_data.dart";

class CreateTodo extends StatefulWidget {
  final Function handleAddNewTodo;
  CreateTodo({this.handleAddNewTodo});
  @override
  _CreateTodoState createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  String todo;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
            )),
        child: Column(
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.redAccent),
            ),
            TextField(
              onChanged: (value) => todo = value,
              autofocus: true,
              style: TextStyle(color: Colors.redAccent),
              textAlign: TextAlign.center,
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent)),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent)),
                  labelStyle: TextStyle(color: Colors.redAccent)),
            ),
            FlatButton(
              color: Colors.redAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTasks(todo);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
