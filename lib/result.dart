import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.finalScores, required this.resetQuizHandler});

  final int finalScores;

  final VoidCallback resetQuizHandler;

  String get resultPhrase {
    if (finalScores > 35) {
      return 'Man of culture';
    } else if (finalScores >= 30) {
      return 'Approved!';
    } else if (finalScores >= 25) {
      return 'Meh';
    }
    return 'You suck!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
          Text(
            'Your final scores: $finalScores pts',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30, color: Colors.red),
          ),
          ElevatedButton(
            onPressed: resetQuizHandler,
            child: const Text(
              'Try again?',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
