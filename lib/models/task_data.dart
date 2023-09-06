import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [];
  bool isDones = false;

  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }


  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}