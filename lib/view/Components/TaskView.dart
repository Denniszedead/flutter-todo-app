import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  String task;

  TaskView({required this.task});
  State<TaskView> createState () => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {

  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.task),
          Checkbox(
          value: isDone,
          onChanged: (newIsDone) {
            isDone = newIsDone!;
            setState(() {});
          },),
        ],
      ),
    );
  }

}