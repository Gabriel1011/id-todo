import 'package:flutter/material.dart';
import 'package:todo/app/pages/home/todo.controller.dart';
import 'package:todo/app/pages/home/widgets/add_task.widget.dart';
import 'package:todo/app/pages/home/widgets/task_list.widget.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final controller = TodoController();

  @override
  void initState() {
    super.initState();

    controller.getAllTaks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AddTaskWidget(
            onTap: (String title) {
              setState(() {
                controller.addTask(title);
              });
            },
          ),
          Expanded(
            child: TaskListTodoWidget(
              itens: controller.allTasks,
            ),
          ),
        ],
      ),
    );
  }
}
