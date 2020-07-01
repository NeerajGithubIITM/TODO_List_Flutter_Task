import 'package:flutter/material.dart';
import './todo_template.dart';
import 'package:intl/intl.dart';

class TaskList extends StatelessWidget {
  final List<Task> listTasks;

  TaskList(this.listTasks);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.ac_unit)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                    'What to do: ${listTasks[index].theTask}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'When Listed: ${DateFormat.yMd().add_jm().format(listTasks[index].date)}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: listTasks.length,
      ),
    );
  }
}
