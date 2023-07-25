import '../../../core/model/responce.dart';
import '../../../core/repositories/dataSource/dataSource.dart';
import '../../../core/repositories/dto/question_dto.dart';
import '../../../core/repositories/repository_protocol.dart';
import '../mappers/response_mapper.dart';

class QuestionRepository implements RepositoryProtocol {
  final DataSourceProtocol dataSource;
  final ResponseMapper mapper = ResponseMapper();

  QuestionRepository({required this.dataSource});

  @override
  Future<ResponseModel> add(RequestDTO request) async {
    final domainModel = await dataSource.getData(request);
    return mapper.toModel(domainModel);
  }
}
