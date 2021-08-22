import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final void Function() _selectHandler;
  Answer(this._answer, this._selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
              padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              alignment: Alignment.center),
          child: Text(
            this._answer,
            style: TextStyle(fontSize: 17),
          ),
          onPressed: this._selectHandler // or () => this._selectHandler(),
          ),
    );
  }
}
