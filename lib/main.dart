import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './data.dart' as data;

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
  int _totalScore = 0;
  var _questions = data.data;

  Widget _getWidget() {
    if (this._questionIdx >= this._questions.length)
      return Column(children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(
              "Completed!",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "Your total score is ${this._totalScore}.",
              style: TextStyle(
                fontSize: 25,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: ElevatedButton(
              onPressed: _resetIdx,
              child: Text(
                "Try Again?",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent)),
            ))
      ]);
    return Quiz(this._questions[this._questionIdx], _answerQuestion);
  }

  void _resetIdx() {
    setState(() {
      this._questionIdx = 0;
    });
  }

  void _answerQuestion(bool correct) {
    setState(() {
      this._questionIdx += 1;
      if (correct) {
        this._totalScore++;
      }
    });
    print("Answer chosen. ${this._questionIdx}, ${this._totalScore}");
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
      body: _getWidget(),
    ));
  }
}
