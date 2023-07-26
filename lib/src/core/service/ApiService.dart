import 'dart:io';

import 'package:surf_practice_magic_ball/src/Helper/extension/HttpClientResponse%20+%20parse.dart';
import '../../Helper/Uri/UriHelp.dart';
import '../repositories/dataSource/dataSource.dart';
import '../repositories/dto/question_dto.dart';

class ApiService implements DataSourceProtocol {
  static final ApiService instance = ApiService._();
  ApiService._();

  final HttpClient client = HttpClient();

  @override
  Future<Map<String, dynamic>> getData(RequestDTO? request) async {
    final url = UriHelp(host: 'eightballapi.com', api: 'api');
    final reqHttp = await client.getUrl(url.makeUrl('biased', request));
    final response = await reqHttp.close();
    return response.toParseMap();
  }
}



 /*UriHelper get uriHelper =>
      UriHelper(host: 'eightballapi.com/', apiKey: 'biased?');*/

   /*

    final url = Uri.parse(
        'https://eightballapi.com/api/biased?question=${request.question.split(' ').join('+')}&lucky=${request?.lucky ?? false}');
    print(url);
    final requestHttp = await client.getUrl(url);

    
    
    requestHttp.headers.contentType = ContentType.json;

    final responce = await requestHttp.close();
    return JsonParseHelper.parse(responce);*/