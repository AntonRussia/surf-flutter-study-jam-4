import 'package:surf_practice_magic_ball/src/core/model/request.dart';

class QuestionMapper {
  Future<RequestModel> toModel(Map<String, dynamic> domainModel) async =>
      RequestModel(
          question: domainModel['reading'], lucky: domainModel['lucky']);
}
