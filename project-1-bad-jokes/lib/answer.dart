import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answer;

  Answer({required this.answer});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(25),
      child: Text(
        answer,
        style: TextStyle(
          fontSize: 22.5,
          fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

