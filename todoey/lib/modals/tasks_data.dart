// ************************
// Author: lyhourchhen
// Date: 5/8/20 / 4:47 PM
// Project todoey
// ************************

import "package:flutter/foundation.dart";
import "./tasks.dart";

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Do Breakfast"),
    Task(name: "Fix Car"),
    Task(name: "Finished Course on Udemy")
  ];
}
