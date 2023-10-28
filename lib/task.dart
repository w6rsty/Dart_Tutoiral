import 'dart:ffi';

import 'package:flutter/material.dart';

typedef task_f = bool Function();

class Task extends StatelessWidget {
  Task(
      this.taskId,
      this.question,
      this.task,
      {Key? key}) : super(key: key);
  final taskId;
  task_f task;
  String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          Text(question),
          const Divider(),
          ElevatedButton(
              onPressed: () => {
                if (task()) {
                  // TODO 错误反馈
                  print("\x1b[32;1m[Task $taskId] 正确\x1b[0m")
                } else {
                  print("\x1b[31;1m[Task $taskId] 错误\x1b[0m")
                }
              },
              child: Text("Check Task $taskId")),
        ],
      ),
    );
  }
}