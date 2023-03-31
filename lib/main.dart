import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScores = 0;
  var _hasReachEnd = false;

  final _quizDict = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'scores': 10},
        {'text': 'Pink', 'scores': 3},
        {'text': 'Green', 'scores': 11},
        {'text': 'Yellow', 'scores': 1},
      ]
    },
    {
      'question': 'What\'s your favorite number?',
      'answers': [
        {'text': '99', 'scores': 5},
        {'text': '69', 'scores': 0},
        {'text': '13', 'scores': 3},
        {'text': '01', 'scores': 10},
      ]
    },
    {
      'question': 'What\'s your favorite weather?',
      'answers': [
        {'text': 'Sunny', 'scores': 7},
        {'text': 'Cloudy', 'scores': 8},
        {'text': 'Rainy', 'scores': 11},
      ]
    },
    {
      'question': 'What\'s your favorite car?',
      'answers': [
        {'text': 'BMW', 'scores': 7},
        {'text': 'RangeRover', 'scores': 8},
        {'text': 'Toyota', 'scores': 5},
      ]
    },
    {
      'question': 'What\'s your favorite shit?',
      'answers': [
        {'text': 'shit', 'scores': 2},
      ]
    },
  ];

  void _nextQuestion(int scores) {
    setState(() {
      _questionIndex += 1;
      _totalScores += scores;
      _hasReachEnd = (_questionIndex >= _quizDict.length);
    });
  }

  void _resetQuiz() {
    setState(() {
      _hasReachEnd = false;
      _questionIndex = 0;
      _totalScores = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter journey'),
        ),
        body: !_hasReachEnd
            ? Quiz(
                quizList: _quizDict,
                questionIndex: _questionIndex,
                nextQuestionHandler: _nextQuestion,
              )
            : Result(
                finalScores: _totalScores,
                resetQuizHandler: _resetQuiz,
              ),
      ),
    );
  }
}
