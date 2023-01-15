import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complate_guide/quiz.dart';
import 'package:flutter_complate_guide/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your favorite Football Club?',
      'answers': [
        {'text': 'Real', 'score': 5},
        {'text': 'Al Ahly', 'score': 10},
        {'text': 'Barca', 'score': 3},
        {'text': 'MUN', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      if (kDebugMode) {
        print('We have more Questions');
      }
    } else {
      if (kDebugMode) {
        print('No more Questions');
      }
    }
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (kDebugMode) {
        print(_questionIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestions: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Results(
                  resutlScore: _totalScore,
                  resetHandler: _resetQuiz,
                )),
    );
  }
}
