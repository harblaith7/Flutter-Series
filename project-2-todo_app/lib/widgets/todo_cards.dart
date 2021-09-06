import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {

  final String title;
  final bool completed;
  final Function(int) updateTodoCompletions;
  final int index;

  TodoCard({
    required this.title,
    required this.completed,
    required this.updateTodoCompletions,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateTodoCompletions(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(20),
              height: 125,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: null, 
                            icon: Icon(
                              completed ? Icons.check : Icons.close,
                              color: completed ? Colors.green : Colors.red,
                            ),
                            color: Colors.cyan
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}