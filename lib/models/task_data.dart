import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';


class MyState extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

 void addTask(newAddedTask){
    _tasks.add(Task(name: newAddedTask));
    notifyListeners();
  }

  void updateTask(i){
    _tasks[i].toggleDone();
    notifyListeners();
  }

  void deletTask(i){
    _tasks.removeAt(i);
    notifyListeners();
  }
}