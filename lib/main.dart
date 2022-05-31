import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './constants.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var _totalScore = 0;
  final _questions = Constants.questions;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionsIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Quiz')),
          body: _questionsIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionsIndex: _questionsIndex,
                  answerQuestion: _answerQuestion)
              : Result(_totalScore, _resetQuiz),
        ));
    }
}
