import 'package:flutter/material.dart';
import 'clothes_answer.dart';
import 'clothes_question.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  void _onQuestionAnswer() {
    if (_questionIndex == _questions.length - 1) {
      return;
    }
    setState(() {
      _questionIndex += 1;
    });
  }

  var _questions = [
    {
      'question': 'Select T-Shirt:',
      'answer':
      [
        'Astronaut and Alien on the Moon',
        'Human Heart',
        'Robot Tee',
      ]
    },
    {
      'question': 'Select T-Shirt size:',
      'answer':
      [
        'S',
        'M',
        'L',
        'XL',
      ]
    },
    {
      'question':'Select Hoodie:',
      'answer':
      [
        'Starry Night',
        'Arctic Monkeys',
        'Galaxy World'
      ]
    },
    {
      'question':'Select Hoodie Size:',
      'answer':
      [
        'S',
        'M',
        'L',
        'XL',
      ]
    },
    {
      'question':'Select Jeans:',
      'answer':
      [
        'Mom fit',
        'Skinny',
        'Cropped',
      ]
    },
    {
      'question':'Select Jeans Size:',
      'answer':
      [
        'S',
        'M',
        'L',
        'XL',
      ]
    }
  ];

  var _questionIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home:Scaffold(
          appBar: AppBar(
            title: Text(
                'Select clothes',
            ),
          ),
          body: Center(child: Column(
            children: [
              ClothesQuestion(_questions[_questionIndex]['question'] as String),
              ...(_questions[_questionIndex]['answer'] as List<String>).map((answer) {
                return Container (
                  margin: EdgeInsets.all(10),
                  child: ClothesAnswer(_onQuestionAnswer, answer),
                );
              }),
            ],
          ),
          ),
        ));
  }
}