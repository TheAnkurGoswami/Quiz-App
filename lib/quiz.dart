import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> _question;
  final void Function(bool) _answerQuestion;

  Quiz(this._question, this._answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this._question["question"] as String),
        ...(this._question["answers"] as List<String>).map((answer) {
          var correct = false;
          if (this._question["correct"] == answer) correct = true;
          return Answer(answer, () {
            this._answerQuestion(correct);
          });
        }).toList(),
      ],
    );
  }
}
