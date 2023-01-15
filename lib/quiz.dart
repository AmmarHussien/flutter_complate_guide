import 'package:flutter/material.dart';
import 'package:flutter_complate_guide/answer.dart';
import 'package:flutter_complate_guide/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  const Quiz({
    super.key,
    required this.questions,
    required this.answerQuestions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['questionText']).toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestions(answer['score']),
            answerText: answer['text'] as String,
          );
        }).toList()
      ],
    );
  }
}
