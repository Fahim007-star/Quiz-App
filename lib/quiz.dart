import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_quiz/data/questions.dart';
import 'package:my_quiz/question_screen.dart';

import 'package:my_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'StartScreen';

  void SwitchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'StartScreen';
        selectedAnswer = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeSwitchScreen = StartScreen(SwitchScreen);
    if (activeScreen == 'Question-Screen') {
      activeSwitchScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
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
          child: activeSwitchScreen,
        ),
      ),
    );
  }
}
