import 'package:complete_flutter_guide/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlutterAppState();
  }
}

class _FlutterAppState extends State<FlutterApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Eagle', 'score': 10},
        {'text': 'Peacock', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your favorite Sport Personality',
      'answers': [
        {'text': 'Ronaldo', 'score': 10},
        {'text': 'Federer', 'score': 10},
        {'text': 'Mourinho', 'score': 10},
        {'text': 'Mikel', 'score': 10}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              'My First App',
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("More questions to go.");
    } else {
      print("End of questions!");
    }
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
