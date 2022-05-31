import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Object> questions;
  final int questionsIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.questionsIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question((questions[questionsIndex] as Map )['question']),
      ...((questions[questionsIndex] as Map)['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(answer['text'], () {
          answerQuestion(answer['score']);
        });
      }).toList(),
    ]);
  }
}
