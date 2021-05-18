import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _question = [
    {
      'questionText': 'IIT Kanpur was established in__',
      'options': [
        {'text': '1949', 'score': 0},
        {'text': '1959', 'score': 1},
        {'text': '1951', 'score': 0},
        {'text': '1947', 'score': 0}
      ]
    },
    {
      'questionText': 'What is IIT Kanpur\'s online portal called?',
      'options': [
        {'text': 'Gradescope', 'score': 0},
        {'text': 'CodeTantra', 'score': 0},
        {'text': 'Turnitin', 'score': 0},
        {'text': 'HelloIITK', 'score': 1}
      ]
    },
    {
      'questionText': 'Which is the best club IITK?',
      'options': [
        {'text': 'DClub', 'score': 0},
        {'text': 'PClub', 'score': 1},
        {'text': 'ELS', 'score': 0},
        {'text': 'RClub', 'score': 0}
      ]
    },
    {
      'questionText': 'Am I selected?',
      'options': [
        {'text': 'yes', 'score': 1},
        {'text': 'chill hai', 'score': 0},
        {'text': 'will think', 'score': 0},
        {'text': 'no', 'score': 0}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _question.length) {
        _questionIndex++;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;

      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('The Game of Blocks'),
            centerTitle: true,
          ),
          body: _questionIndex < _question.length
              ? Quiz(_answerQuestion, _question, _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
