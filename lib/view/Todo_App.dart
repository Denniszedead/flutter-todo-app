import 'package:flutter/material.dart';
import 'package:todo_app/view/Components/AddTask.dart';
import 'package:todo_app/view/Components/TaskView.dart';

class Todo_App extends StatefulWidget {
  State<Todo_App> createState() => _Todo_app_State();
}


class _Todo_app_State extends State<Todo_App> {
  List<Widget> tasks = [
    TaskView(task: "Eat Dinner"),
    TaskView(task: "Sleep"),
    TaskView(task: "Buy Textbook"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: tasks,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AddTask();
          }).then((newTask) => setState(() {
            if (newTask != '') {
              tasks.add(new TaskView(task: newTask));
              setState(() {});
            }
          }));
        },
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }

}