import 'package:flutter/material.dart';

typedef task_f = bool Function();

class Task extends StatelessWidget {
  Task(
      this.task_id,
      this.question,
      this.task,
      {Key? key}) : super(key: key);
  final task_id;
  task_f task;
  String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          Text(question),
          Divider(),
          ElevatedButton(
              onPressed: () => {
                if (task()) {
                  // TODO 错误反馈

                } else {
                  print("Task_1 错误")
                }
              },
              child: Text("Check Task ${task_id}")),
        ],
      ),
    );
  }
}