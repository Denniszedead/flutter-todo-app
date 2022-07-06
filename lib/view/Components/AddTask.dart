import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return AlertDialog(
      content: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add New Task"),
              TextField(
                controller: _controller,
              )
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, _controller.text);
            }, child: Text('Add Task')),
      ],
    );
  }

}