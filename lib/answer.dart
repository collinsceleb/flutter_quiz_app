import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  Answer(this.answerQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerQuestion,
      ),
    );
  }
}
