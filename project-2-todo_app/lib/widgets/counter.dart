import 'package:flutter/material.dart';

class Counter extends StatelessWidget {

  final int numberOfTodos;
  final int totalCompletions;

  Counter({
    required this.numberOfTodos,
    required this.totalCompletions
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Text(
        "$totalCompletions/$numberOfTodos",
        style: TextStyle(
          fontSize: 75,
          color: totalCompletions == numberOfTodos ? Colors.green : Colors.black
        ),
      ),
    );
  }
}