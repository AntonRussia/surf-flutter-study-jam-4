import '../repositories/dto/question_dto.dart';
import '../repositories/repository_protocol.dart';

class QuestionService {
  final RepositoryProtocol repository;
  QuestionService({required this.repository});

  getResponse({required RequestDTO request}) => repository.add(request);
}
