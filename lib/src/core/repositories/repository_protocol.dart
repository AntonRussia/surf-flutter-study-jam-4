import 'package:surf_practice_magic_ball/src/core/model/singleResponse.dart';

import 'dto/question_dto.dart';

abstract class RepositoryProtocol {
  Future<SingleResponse> add(RequestDTO request);

  Future<ResponseModel> getResponse<ResponseModel>(RequestDTO? request);
}
