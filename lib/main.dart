import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIdx = 0;
  void _answerQuestion() {
    setState(() {
      this._questionIdx += 1;
    });
    print("Answer chosen. ${this._questionIdx}");
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Text(questions[this._questionIdx]),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Option 1")),
            ElevatedButton(onPressed: () {}, child: Text("Option 2")),
            ElevatedButton(onPressed: () {}, child: Text("Option 3")),
          ],
        ),
      ),
    );
  }
}
