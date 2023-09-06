import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

// ignore: must_be_immutable
class FloatingActionButtonW extends StatelessWidget {
  FloatingActionButtonW({super.key});
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color.fromRGBO(28, 270, 31, 0.7),
            title: const Center(child: Text("Add Task")),
            content: TextField(
              onChanged: (value) {
                newTaskTitle = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if(newTaskTitle != null){
                      Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 45),
                  ),
                  child: const Text("Add"),
                ),
              ),
            ],
          ),
        );
      },
      backgroundColor: const Color.fromRGBO(28, 270, 31, 0.7),
      child: const Icon(Icons.add),
    );
  }
}
