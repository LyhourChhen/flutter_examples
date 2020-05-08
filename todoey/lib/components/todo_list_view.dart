// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:33 PM
// Project todoey
// ************************

import "package:flutter/material.dart";
import "./todo_tile_view.dart";

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TodoListTiles(), TodoListTiles()],
    );
  }
}
