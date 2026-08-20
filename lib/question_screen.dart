import 'package:flutter/material.dart';
import 'package:my_quiz/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Questions"),
          SizedBox(height: 30),
          AnswerButton(buttonText: "Answer 1", ontap: () {}),
          AnswerButton(buttonText: "Answer 2", ontap: () {}),
          AnswerButton(buttonText: "Answer 3", ontap: () {}),
          AnswerButton(buttonText: "Answer 4", ontap: () {}),
        ],
      ),
    );
  }
}
