import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function handlePress;

  Answer(this.text, this.handlePress);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handlePress,
        child: Text(text)
      ),
    );
  }
}
