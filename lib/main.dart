import 'package:flutter/material.dart';

import 'quez.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'White', 'score': 2},
        {'text': 'Pink', 'score': 4},
        {'text': 'Blue', 'score': 6},
        {'text': 'Black', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dear', 'score': 2},
        {'text': 'Horse', 'score': 4},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion', 'score': 10},
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 4},
        {'text': 'Max', 'score': 6},
        {'text': 'Max', 'score': 10},
      ]
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // forces the flutter to rerender the changes by calling the build method again.
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuez() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quez(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(totalScore: _totalScore, resetQuiz: _resetQuez,),
      ),
    );
  }
}
