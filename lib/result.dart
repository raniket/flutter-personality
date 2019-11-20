import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result({@required this.totalScore, @required this.resetQuiz});

  String get getFinalText {
    String personality;
    if (totalScore <= 12)
      personality = 'You are an inocent person! ${'\u{1F600}'}';
    else if (totalScore <= 18)
      personality = 'You are a good person! ${'\u{1F601}'}';
    else if (totalScore <= 24)
      personality = 'You are a strange person! ${'\u{1F607}'}';
    else
      personality = 'You are not a good person! ${'\u{1F60B}'}';
    return personality;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          getFinalText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          color: Colors.blue,
          splashColor: Colors.blueAccent,
          onPressed: resetQuiz,
          child: Text(
            'Reset Quiz',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
