import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {super.key, this.fontsize = 28});

  final String questionText;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: fontsize),
        textAlign: TextAlign.center,
      ),
    );
  }
}
