import 'package:flutter/material.dart';
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
  List<String> _questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
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
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(this._questions[this._questionIdx]),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Option 1")),
            ElevatedButton(onPressed: () {}, child: Text("Option 2")),
            ElevatedButton(onPressed: () {}, child: Text("Option 3")),
          ],
        ),
      ),
    );
  }
}
