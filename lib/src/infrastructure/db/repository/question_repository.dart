import 'package:surf_practice_magic_ball/src/core/model/request.dart';
import 'package:surf_practice_magic_ball/src/infrastructure/db/mappers/question_mapper.dart';

import '../../../core/repositories/dataSource/dataSource.dart';
import '../../../core/repositories/dto/question_dto.dart';
import '../../../core/repositories/repository_protocol.dart';
import '../mappers/response_mapper.dart';

class QuestionRepository implements RepositoryProtocol {
  final DataSourceProtocol dataSource;
  final ResponseMapper mapper = ResponseMapper();
  final QuestionMapper mapperQuestion = QuestionMapper();
  QuestionRepository({required this.dataSource});

  @override
  Future<RequestModel> add(RequestDTO request) async {
    final domainModel = await dataSource.getData(request);
    print(domainModel);
    return mapperQuestion.toModel(domainModel);
  }
}
