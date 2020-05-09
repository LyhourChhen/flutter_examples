// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 4:47 PM
// Project todoey
// ************************

import "package:flutter/foundation.dart";
import "./tasks.dart";
import "dart:collection";

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Do Breakfast"),
    Task(name: "Fix Car"),
    Task(name: "Finished Course on Udemy")
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTasks(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
