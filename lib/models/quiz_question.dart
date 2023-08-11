// model of data
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // we need this because shuffle update the original array
  // but here I dont want that
  List<String> getShuffledAnswers() {
    final currentList = List.of(answers); // make a copy
    currentList.shuffle(); // shuffle
    return currentList;
  }
}
