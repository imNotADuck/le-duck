import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
    required this.answerText,
    required this.onPressedCallback,
  });

  final String answerText;
  final VoidCallback onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedCallback,
      child: Text(answerText),
    );
  }
}
