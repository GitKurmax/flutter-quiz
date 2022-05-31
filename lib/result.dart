import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 20) {
      resultText = 'You are ... strange?1!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            )),
        ElevatedButton(onPressed: resetQuiz, child: Text('Restart'))
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}
