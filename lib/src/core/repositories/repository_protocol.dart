import 'package:surf_practice_magic_ball/src/core/model/request.dart';

import 'dto/question_dto.dart';

abstract class RepositoryProtocol {
  Future<RequestModel> add(RequestDTO request);
}
