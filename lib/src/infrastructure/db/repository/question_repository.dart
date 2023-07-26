import 'package:surf_practice_magic_ball/src/core/model/singleResponse.dart';
import 'package:surf_practice_magic_ball/src/infrastructure/db/mappers/single_response_mapper.dart';

import '../../../core/repositories/dataSource/dataSource.dart';
import '../../../core/repositories/dto/question_dto.dart';
import '../../../core/repositories/repository_protocol.dart';
import '../mappers/full_response_mapper.dart';

class QuestionRepository extends RepositoryProtocol {
  final DataSourceProtocol dataSource;
  final FullResponseMapper fullMapper = FullResponseMapper();
  final SingleResponseMapper singleMapper = SingleResponseMapper();
  QuestionRepository({required this.dataSource});

  @override
  Future<SingleResponse> add(RequestDTO request) async {
    final domainModel = await dataSource.getData(request);
    print(domainModel);
    return singleMapper.toModel(domainModel);
  }

  @override
  Future<ResponseModel> getResponse<ResponseModel>(RequestDTO? request) async {
    final isSingleModel = ResponseModel is SingleResponse;
    final domainModel = await dataSource.getData(request);
    return isSingleModel
        ? singleMapper.toModel(domainModel) as Future<ResponseModel>
        : fullMapper.toModel(domainModel) as Future<ResponseModel>;
  }
}
