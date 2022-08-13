// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_declarations

import 'package:f_test/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _qIndex = _qIndex + 1;
    });
    print('Answer was chosen!');
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'Te gustan los tamales :D?',
        'answers': [
          {'text': 'Awebo qeu si', 'score': 15},
          {'text': 'Ni madres', 'score': 5},
          {'text': 'Meh', 'score': 10},
        ],
      },
      {
        'questionText': 'Te gusta el pollo?',
        'answers': [
          {'text': 'Pollo lover', 'score': 15},
          {'text': 'Pollo hater', 'score': 5},
          {'text': 'Pollo whatever', 'score': 10},
        ],
      },
      {
        'questionText': 'Te gusta la carne?',
        'answers': [
          {'text': 'Meat lover', 'score': 15},
          {'text': 'Meat hater', 'score': 5},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _qIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  qIndex: _qIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore)),
    );
  }
}
