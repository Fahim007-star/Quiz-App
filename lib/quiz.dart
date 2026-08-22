import 'package:flutter/material.dart';
import 'package:my_quiz/data/questions.dart';
import 'package:my_quiz/question_screen.dart';
import 'package:my_quiz/result_screen.dart';

import 'package:my_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeSwitchScreen = 'StartScreen';

  SwitchScreen() {
    setState(() {
      activeSwitchScreen = 'Question-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeSwitchScreen = 'result-Screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(SwitchScreen);
    if (activeSwitchScreen == 'Question-Screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeSwitchScreen == "result-Screen") {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.deepPurple],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
