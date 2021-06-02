import 'package:todo/app/model/task.model.dart';

class TodoController {
  List<Task> allTasks;

  void getAllTaks() {
    allTasks = <Task>[];
  }

  void addTask(String title) {
    allTasks.add(Task(title: title, done: false));
  }
}
