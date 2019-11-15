import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
//            RaisedButton(
//              child: Text('Answer 2'),
//              onPressed: _answerQuestion,
////              onPressed: () => print("Question 2 answered"), // Anonymous function
//            ),
//            RaisedButton(
//              child: Text('Answer 3'),
//              onPressed: _answerQuestion,
////              onPressed: () {
////                print("Question 3 answered"); // Anonymous function
////              },
//            ),
      ],
    );
  }
}
