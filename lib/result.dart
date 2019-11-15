import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 25) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 28) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 35) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resultHandler,
          )
        ],
      ),
    );
  }
}
