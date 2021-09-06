import 'package:flutter/material.dart';
import 'package:todo_app/widgets/count.dart';
import 'package:todo_app/widgets/new_todo.dart';
import 'package:todo_app/widgets/todo_cards.dart';
import 'package:todo_app/widgets/todo_list.dart';
import './models/todo.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> todos = [
    Todo(id: Uuid(), title: "Clean room", completed: true),
    Todo(id: Uuid(), title: "Workout", completed: false),
    Todo(id: Uuid(), title: "Work on YouTube", completed: true),
    Todo(id: Uuid(), title: "Pet the Cat", completed: false),
    Todo(id: Uuid(), title: "Pet the Cat", completed: false),
  ];

  void updateTodoCompletions(int index){
    setState(() {
      todos[index].completed = !todos[index].completed;
    });
  }

  void addTodo(String todo){
    setState(() {
      todos.add(Todo(
        id: Uuid(),
        completed: false,
        title: todo
      ));
    });
  }

    void showAddTodoModal(BuildContext context) {
    showModalBottomSheet(context: context, builder: (bCtx) {
      return NewTodo(addTodo: addTodo,);
    }, isScrollControlled: true);
  }

  int calcTotalCompletions() {
    var totalCompletions = 0;

    todos.forEach((todo) => {
      if(todo.completed) {
        totalCompletions = totalCompletions + 1
      }
    });

    return totalCompletions;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Count(
              numberOfTodos: todos.length,
              totalCompletions: calcTotalCompletions()
            ),
            TodoList(
              todos: todos,
              updateTodoCompletions: updateTodoCompletions
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {showAddTodoModal(context);},
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
