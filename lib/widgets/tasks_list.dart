import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TasksLest extends StatelessWidget {
  const TasksLest({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Consumer<TaskData>(
          builder: (context, taskData, child) {
            return ListView.builder(
              itemCount: taskData.tasks.length,
              itemBuilder: (context, i) {
                return TasksTile(
                  taskTitle: taskData.tasks[i].name,
                  isChecked: taskData.tasks[i].isDone,
                  checkBoxChange: (newValue){
                    taskData.updateTask(taskData.tasks[i]);
                  },
                  onLongPress: () {
                    taskData.deleteTask(taskData.tasks[i]);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
