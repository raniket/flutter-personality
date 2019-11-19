import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final Function resetQuiz;

  Result({@required this.totalScore, @required this.resetQuiz});

  String get getFinalText {
    String personality;
    if (totalScore <= 8) personality = 'You are an inocent person';
    else if (totalScore <= 14) personality = 'You are a good guy';
    else if (totalScore <= 20) personality = 'You are a....  strange person!!!';
    else personality = 'You are bad person';
    return personality;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Text(getFinalText, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
      FlatButton(onPressed: resetQuiz, child: Text('Reset Quiz', style: TextStyle(color: Colors.blue),),)
    ],);
  }
}
