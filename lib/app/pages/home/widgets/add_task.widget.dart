import 'package:flutter/material.dart';

class AddTaskWidget extends StatefulWidget {
  final Function onTap;

  AddTaskWidget({@required this.onTap});

  @override
  _AddTaskWidgetState createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width / 1.5,
            child: TextField(
              controller: textController,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Infome o nome da tarefa',
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle,
              size: 30,
            ),
            onPressed: () {
              if (textController.text != "") widget.onTap(textController.text);
            },
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}
