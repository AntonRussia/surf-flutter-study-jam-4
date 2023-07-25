import '../model/responce.dart';
import 'dto/question_dto.dart';

abstract class RepositoryProtocol {
  Future<ResponseModel> add(RequestDTO request);
}
