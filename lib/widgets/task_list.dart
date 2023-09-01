import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyState>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (bool? newValue) {
                 taskData.updateTask(index);
              },
              longPressCallback:  (){
                taskData.deletTask(index);
              },
            );
          },
          itemCount: taskData.taskCount ,
        );
      },
    );
  }
}
