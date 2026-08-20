import 'package:flutter/material.dart';
import 'package:my_quiz/question_screen.dart';

import 'package:my_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'StartScreen';

  void SwitchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeSwitchScreen = StartScreen(SwitchScreen);
    if (activeScreen == 'Question-Screen') {
      activeSwitchScreen = QuestionScreen();
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
