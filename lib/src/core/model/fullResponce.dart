import 'sentiment.dart';

class FullResponseModel {
  final String reading;
  final String question;
  final String lucky;
  final SentimentModel sentiment;

  FullResponseModel(
      {required this.reading,
      required this.question,
      required this.sentiment,
      required this.lucky});
}
