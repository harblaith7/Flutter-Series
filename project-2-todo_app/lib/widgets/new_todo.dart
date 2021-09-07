import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTodo extends StatefulWidget {

  final Function(String) addTodo;

  NewTodo({required this.addTodo});

  @override
  State<StatefulWidget> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {

  TextEditingController _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            controller: _todoController,
            decoration: InputDecoration(
              labelText: "New Todo"
            ),
            maxLength: 15,
          ),
          TextButton(
            onPressed: () {
              widget.addTodo(_todoController.text);
              Navigator.of(context).pop();
            }, 
            child: Text("Add")
          )
        ],
      ),
    );
  }
}