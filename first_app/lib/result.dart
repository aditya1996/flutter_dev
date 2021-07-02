import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 12) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 16) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // : - false condition
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
