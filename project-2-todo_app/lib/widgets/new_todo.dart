import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {

  final Function(String) addTodo;

  NewTodo({required this.addTodo});

  @override
  State<StatefulWidget> createState() {
    return NewTodoState();
  }
}

class NewTodoState extends State<NewTodo> {

  TextEditingController _todoController = TextEditingController();

  void submitData(){
    final enteredTitle = _todoController.text;

    if(enteredTitle.isEmpty){
      return; 
    }

    print("sadas");

    widget.addTodo(_todoController.text);

    Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "New Todo"
                ),
                maxLength: 15,
                controller: _todoController,
                onSubmitted: (_) => submitData(),
              ),
              TextButton(
                onPressed: submitData, 
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.lightBlueAccent
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}