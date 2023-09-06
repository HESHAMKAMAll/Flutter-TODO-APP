import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkBoxChange;
  final Function() onLongPress;

  const TasksTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxChange,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onLongPress: onLongPress,
          title: Text(taskTitle,
              style: TextStyle(
                decorationColor: Colors.black,
                decorationThickness: 4,
                decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          trailing: Checkbox(
            value: isChecked,
            onChanged: checkBoxChange,
          ),
        ),
        const Divider(color: Color.fromRGBO(28, 270, 31, 0.2)),
      ],
    );
  }
}
