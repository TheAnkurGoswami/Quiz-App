import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  Answer(this._answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            alignment: Alignment.center),
        child: Text(this._answer),
        onPressed: () {},
      ),
    );
  }
}
