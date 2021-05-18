import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function pointer;
  final String optionText;
  Answers(this.pointer, this.optionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(optionText),
        onPressed: pointer,
      ),
    );
  }
}
