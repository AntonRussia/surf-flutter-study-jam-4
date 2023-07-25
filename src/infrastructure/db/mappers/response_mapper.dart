import '../../../Helper/extension/Map + key.dart';
import '../../../core/model/responce.dart';
import '../../../core/model/sentiment.dart';

class ResponseMapper {
  ResponseModel toModel(Map<String, dynamic> domainModel) {
    final Map<String, dynamic> sentimentMap =
        domainModel.keyHelper<Map<String, dynamic>>(key: 'sentiment');

    final entitySentiment = SentimentModel(
        score: sentimentMap.keyHelper<int>(key: 'score'),
        comparative: sentimentMap.keyHelper<double>(key: 'comparative'),
        calculation:
            sentimentMap.keyHelper<List<Map<String, int>>>(key: 'calculation'));

    final entity = ResponseModel(
        reading: domainModel.keyHelper<String>(key: 'reading'),
        question: domainModel.keyHelper<String>(key: 'question'),
        sentiment: entitySentiment,
        tokens: domainModel.keyHelper<List<String>>(key: 'tokens'),
        words: domainModel.keyHelper<List<String>>(key: 'words'),
        positive: domainModel.keyHelper<List<String>>(key: 'positive'),
        negative: domainModel.keyHelper<List<dynamic>>(key: 'positive'));
    return entity;
  }
}
