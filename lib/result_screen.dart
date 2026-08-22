import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_quiz/data/questions.dart';
import 'package:my_quiz/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].questionsText,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data["correct_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your answered $numCorrectQuestions out of $numTotalQuestions Questions correctly",
            ),
            SizedBox(height: 30),

            Text("List of answers and Questions..."),
            QuestionsSummary(summaryData: summaryData),
            TextButton(
              onPressed: () {},
              child: Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
