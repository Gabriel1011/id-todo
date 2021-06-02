import 'package:flutter/material.dart';
import 'package:todo/app/model/task.model.dart';
import 'package:todo/app/pages/home/widgets/task.widget.dart';

class TaskListTodoWidget extends StatelessWidget {
  final List<TaskModel> itens;

  const TaskListTodoWidget({Key key, @required this.itens}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskWidget(
          task: itens[index],
        );
      },
    );
  }
}
