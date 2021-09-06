import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import "./todo_cards.dart";

class TodoList extends StatelessWidget {

  final List<Todo> todos;
  final Function(int) updateTodoCompletions;

  TodoList({required this.todos, required this.updateTodoCompletions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return TodoCard(
              title: todos[i].title,
              completed: todos[i].completed,
              index: i,
              updateTodoCompletions: updateTodoCompletions,
            );
          },
          itemCount: todos.length,
        ),
    );
  }
}