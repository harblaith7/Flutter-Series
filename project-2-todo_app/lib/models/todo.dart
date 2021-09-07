import 'package:uuid/uuid.dart';

class Todo {
  Uuid id;
  String title;
  bool completed;

  Todo({
    required this.id,
    required this.title,
    required this.completed
  });
}