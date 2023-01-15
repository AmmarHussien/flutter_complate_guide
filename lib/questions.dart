import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(
        20,
      ),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 116, 33, 112),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
