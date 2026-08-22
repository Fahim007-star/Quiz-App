import 'package:my_quiz/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    questionsText: "What is dart?",
    answers: [
      "A programming Language",
      "A type of bird",
      "A type of fish",
      "A environment",
    ],
  ),
  QuizQuestions(
    questionsText: "Who developed Dart language?",
    answers: ["Google", "Microsoft", "Apple", "Oracle"],
  ),

  QuizQuestions(
    questionsText: "Which keyword is used to define a constant in Dart?",
    answers: ["const", "final", "static", "var"],
  ),

  QuizQuestions(
    questionsText:
        "What is the default value of uninitialized variables in Dart?",
    answers: ["null", "0", "empty string", "false"],
  ),

  QuizQuestions(
    questionsText:
        "Which data type is used to store true/false values in Dart?",
    answers: ["bool", "int", "String", "double"],
  ),

  QuizQuestions(
    questionsText: "Which keyword is used to create a class in Dart?",
    answers: ["class", "struct", "object", "new"],
  ),
  QuizQuestions(
    questionsText: "Which symbol is used for string interpolation in Dart?",
    answers: ["\$", "#", "%", "&"],
  ),

  QuizQuestions(
    questionsText: "Which collection type in Dart stores unique values?",
    answers: ["Set", "List", "Map", "Array"],
  ),

  QuizQuestions(
    questionsText: "Which keyword is used to handle exceptions in Dart?",
    answers: ["try-catch", "throw", "error", "catchAll"],
  ),

  QuizQuestions(
    questionsText: "Which function is the entry point of every Dart program?",
    answers: ["main()", "start()", "run()", "init()"],
  ),
];
