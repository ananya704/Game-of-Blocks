import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> question;
  final int questionIndex;
  Quiz(this.answerQuestion, this.question, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        ...(question[questionIndex]['options'] as List<Map<String, Object>>)
            .map((smth) {
          return Answers(() => answerQuestion(smth['score']), smth['text']);
        }).toList()
      ],
    );
  }
}
