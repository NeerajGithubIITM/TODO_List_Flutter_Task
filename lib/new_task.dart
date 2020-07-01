import 'package:flutter/material.dart';

class NewTasks extends StatefulWidget {
  final Function addTask;

  NewTasks(this.addTask);

  @override
  _NewTasksState createState() => _NewTasksState();
}

class _NewTasksState extends State<NewTasks> {
  final _taskController = TextEditingController();


  void _submitData() {
    final enteredTask = _taskController.text;

    if (enteredTask.isEmpty) {
      return;
    }

    widget.addTask(
      enteredTask,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'What to do'),
              controller: _taskController,
              onSubmitted: (_) => _submitData()
            ),
            
            FlatButton(
              child: Text('Add task'),
              textColor: Colors.green,
              onPressed: _submitData,
            ),
          ],
        ),
      ),
    );
  }
}
