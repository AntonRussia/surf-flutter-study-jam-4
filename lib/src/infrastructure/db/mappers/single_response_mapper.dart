import 'package:surf_practice_magic_ball/src/core/model/singleResponse.dart';

class SingleResponseMapper {
  Future<SingleResponse> toModel(Map<String, dynamic> domainModel) async =>
      SingleResponse(
          reading: domainModel['reading'], lucky: domainModel['lucky']);
}
