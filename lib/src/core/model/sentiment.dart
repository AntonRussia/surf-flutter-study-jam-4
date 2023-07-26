class SentimentModel {
  final int score;
  final double comparative;
  final List<Map<String, int>> calculation;
  final List<String> tokens;
  final List<String> words;
  final List<String> positive;
  final List<String> negative;

  SentimentModel(
      {required this.score,
      required this.comparative,
      required this.calculation,
      required this.tokens,
      required this.words,
      required this.negative,
      required this.positive});
}
