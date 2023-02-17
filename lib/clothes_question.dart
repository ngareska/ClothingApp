import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String _questionContent;
  ClothesQuestion(this._questionContent);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(20),
        child: Text(
        _questionContent,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,),
        ),
      );
  }
}