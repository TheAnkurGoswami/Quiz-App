import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _questionIdx = 0;
  var _questions = [
    {
      "question": "What's your favorite color?",
      "answers": ["Red", "Black", "Blue", "Green"]
    },
    {
      "question": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Horse", "Lion"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      this._questionIdx += 1;
      if (this._questionIdx >= this._questions.length) {
        this._questionIdx = 0;
      }
    });
    print("Answer chosen. ${this._questionIdx}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Colors.pink[800],
        ),
        body: Column(
          children: <Widget>[
            Question(this._questions[this._questionIdx]["question"] as String),
            ...(this._questions[this._questionIdx]["answers"] as List<String>)
                .map((answer) {
              return Answer(answer, this._answerQuestion);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
