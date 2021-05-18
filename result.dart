import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetTest;

  Result(this.totalScore, this.resetTest);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'End score is $totalScore',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: resetTest, child: Text('reset the quiz'))
      ]),
    );
  }
}
