import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.StartQuiz, {super.key});

  final void Function() StartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/edu_logo.png",
            width: 300,
            color: const Color.fromARGB(164, 255, 255, 255),
          ),
          SizedBox(height: 5),
          Text(
            "Knowledge Today, Success Tomorrow",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: StartQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              iconSize: 30,
            ),

            label: Text("Start Quiz"),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
