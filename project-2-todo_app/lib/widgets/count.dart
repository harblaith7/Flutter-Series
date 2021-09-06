import 'package:flutter/material.dart';

class Count extends StatelessWidget {

  final int numberOfTodos;
  final int totalCompletions;

  Count({required this.numberOfTodos, required this.totalCompletions});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      width: double.infinity,
      child: Text(
        "$totalCompletions/$numberOfTodos",
        style: TextStyle(
          fontSize: 75,
          color: totalCompletions == numberOfTodos ? Colors.green : Colors.black45
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}