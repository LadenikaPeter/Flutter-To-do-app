import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newAddedTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newAddedTask = newText;
              },
            ),
            TextButton(
              onPressed: (){
                Provider.of<MyState>(context, listen: false).addTask(newAddedTask);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              child: Text('Add', style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
