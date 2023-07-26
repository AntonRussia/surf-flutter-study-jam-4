import '../../../Helper/extension/Map + key.dart';
import '../../../core/model/fullResponce.dart';
import '../../../core/model/sentiment.dart';

class FullResponseMapper {
  Future<FullResponseModel> toModel(Map<String, dynamic> domainModel) async {
    final Map<String, dynamic> sentimentMap = domainModel['sentiment'];
    print(domainModel);
    print(sentimentMap['calculation']);

    final entitySentiment = SentimentModel(
      score: sentimentMap['score'],
      comparative: sentimentMap['comparative'],
      calculation: [{}],
      tokens: (sentimentMap['tokens'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      words: (sentimentMap['words'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      positive: (sentimentMap['positive'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      negative: (sentimentMap['negative'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
    );

    final entity = FullResponseModel(
        reading: domainModel['reading'],
        question: domainModel['question'],
        sentiment: entitySentiment,
        lucky: domainModel['lucky']);

    return entity;
  }
}
