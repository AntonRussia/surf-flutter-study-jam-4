import 'sentiment.dart';

class ResponseModel {
  final String reading;
  final String question;
  final SentimentModel sentiment;
  final List<String> tokens;
  final List<String> words;
  final List<String> positive;
  final List<dynamic> negative;

  ResponseModel(
      {required this.reading,
      required this.question,
      required this.sentiment,
      required this.tokens,
      required this.words,
      required this.positive,
      required this.negative});
}
