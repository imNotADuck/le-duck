import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.quizList,
      required this.nextQuestionHandler,
      required this.questionIndex});

  final List<Map<String, Object>> quizList;
  final Function(int) nextQuestionHandler;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(
        quizList[questionIndex]['question'] as String,
      ),
      ...(quizList[questionIndex]['answers'] as List<Map<String, Object>>).map(
        (answer) => Answer(
          answerText: answer['text'] as String,
          onPressedCallback: () => nextQuestionHandler(answer['scores'] as int),
        ),
      ),
    ]);
  }
}
