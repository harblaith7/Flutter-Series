import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  final Function(String) changeJokeIndex;

  Buttons({required this.changeJokeIndex});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: (){
              changeJokeIndex("prev");
            },
            child: Icon(
              Icons.arrow_left_rounded,
              size: 60
            ),
            backgroundColor: Colors.orange,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: (){
              changeJokeIndex("next");
            },
            child: Icon(
              Icons.arrow_right_rounded,
              size: 60
            ),
            backgroundColor: Colors.orange,
          ),
        )
      ]
    );
  }
}
