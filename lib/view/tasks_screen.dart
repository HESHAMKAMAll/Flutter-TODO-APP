import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import '../widgets/floating_action_button.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 270, 31, 0.7),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButtonW(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.playlist_add_check, size: 40),
                const SizedBox(width: 20),
                const Text("ToDo App", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: const Color.fromRGBO(28, 270, 31, 0.7),
                        title: const Center(child: Text("email: heshamkamal422@gmail.com",style: TextStyle(fontSize: 17),)),
                        content: const Text("To delete any task Please press and hold Thank you."),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cansel"),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.info_outline),
                ),
              ],
            ),
            Text("${Provider.of<TaskData>(context).tasks.length} Tasks", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const TasksLest(),
          ],
        ),
      ),
    );
  }
}
