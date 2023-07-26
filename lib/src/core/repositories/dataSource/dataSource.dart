import '../dto/question_dto.dart';

abstract class DataSourceProtocol {
  Future<Map<String, dynamic>> getData(RequestDTO? request);
}
