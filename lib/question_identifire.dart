import 'package:flutter/material.dart';

class QuestionIdentifire extends StatelessWidget {
  const QuestionIdentifire({
    super.key,
    required this.isCorrectAnswer,
    required this.questionNumber,
  });
  final bool isCorrectAnswer;
  final int questionNumber;

  @override
  Widget build(BuildContext context) {
    final number = questionNumber + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 28, 145, 4)
            : const Color.fromARGB(255, 199, 2, 2),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
