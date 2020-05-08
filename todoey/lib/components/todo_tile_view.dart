// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 1:34 PM
// Project todoey
// ************************

import "package:flutter/material.dart";

class TodoListTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Finished Flutter Course on Udemy"),
      trailing: Checkbox(
        onChanged: (value) => print(value),
        value: false,
      ),
    );
  }
}
