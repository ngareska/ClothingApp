import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  final Function() tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(
              color: Colors.red,
              fontSize: 20),
        ),
        onPressed: tapped,
        style: ElevatedButton.styleFrom(primary:Colors.green)
    );
  }
}