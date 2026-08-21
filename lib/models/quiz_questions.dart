class QuizQuestions {
  const QuizQuestions({required this.questionsText, required this.answers});
  final String questionsText;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
