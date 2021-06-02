import 'package:flutter/material.dart';
import 'package:todo/app/model/task.model.dart';

class TaskWidget extends StatefulWidget {
  Task task;
  TaskWidget({Key key, @required this.task}) : super(key: key);

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color: Theme.of(context).primaryColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.task.title,
              style: TextStyle(
                decoration: widget.task.done
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontSize: 30,
                color: widget.task.done ? Colors.grey : Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.check_box,
                size: 30,
                color: widget.task.done ? Colors.green : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  widget.task.done = true;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
