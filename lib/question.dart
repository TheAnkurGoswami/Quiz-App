import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 150, 10, 100),
        child: Text(
          this._question,
          style: TextStyle(
            fontSize: 28,
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
