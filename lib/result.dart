import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({
    super.key,
    required this.resutlScore,
  });

  final int resutlScore;

  String get resultPhrase {
    String resultText;

    if (resutlScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resutlScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resutlScore <= 16) {
      resultText = 'you are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
