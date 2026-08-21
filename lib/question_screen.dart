import 'package:flutter/material.dart';
import 'package:my_quiz/answer_button.dart';
import 'package:my_quiz/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionsIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionsText,
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) =>
                  AnswerButton(buttonText: answer, ontap: answerQuestion),

              // AnswerButton(buttonText: currentQuestion.answers[0], ontap: () {}),
              // AnswerButton(buttonText: currentQuestion.answers[1], ontap: () {}),
              // AnswerButton(buttonText: currentQuestion.answers[2], ontap: () {}),
            ), // AnswerButton(buttonText: currentQuestion.answers[3], ontap: () {}),
          ],
        ),
      ),
    );
  }
}
