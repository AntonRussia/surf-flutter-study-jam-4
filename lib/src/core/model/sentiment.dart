class SentimentModel {
  final int score;
  final double comparative;
  final List<Map<String, int>> calculation;

  SentimentModel(
      {required this.score,
      required this.comparative,
      required this.calculation});
}
