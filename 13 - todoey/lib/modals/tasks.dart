// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 2:57 PM
// Project todoey
// ************************

class Task {
  final String name;
  bool isDone;
  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
