import 'package:todo/app/model/task.model.dart';

class TodoController {
  List<TaskModel> allTasks;

  void getAllTaks() {
    allTasks = <TaskModel>[];
  }

  void addTask(String title) {
    allTasks.add(TaskModel(title: title, done: false));
  }
}
