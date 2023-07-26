import 'package:surf_practice_magic_ball/src/core/repositories/dto/question_dto.dart';

class UriHelp {
  final String host;
  final String api;

  UriHelp({required this.host, required this.api});

  Uri makeUrl(String path, RequestDTO? request) {
    String urlPath = 'https://$host/$api';
    if (request == null) return Uri.parse(urlPath);
    urlPath =
        '$urlPath/$path?question=${request.question.split(' ').join('+')}&lucky=${request.lucky ?? false}';

    return Uri.parse(urlPath);
  }
}
