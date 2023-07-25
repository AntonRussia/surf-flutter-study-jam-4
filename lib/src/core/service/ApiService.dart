import 'dart:convert';
import 'dart:io';

import '../../Helper/Uri/UriHelper.dart';
import '../../Helper/jsonHelper/jsonParseHelper.dart';
import '../model/responce.dart';
import '../repositories/dataSource/dataSource.dart';
import '../repositories/dto/question_dto.dart';

class ApiService implements DataSourceProtocol {
  static final ApiService instance = ApiService._();
  ApiService._();

  final HttpClient client = HttpClient();
  UriHelper get uriHelper =>
      UriHelper(host: 'eightballapi.com/', apiKey: 'api');

  @override
  Future<Map<String, dynamic>> getData(RequestDTO request) async {
    final url = uriHelper.makeUrl('');
    final requestHttp = await client.getUrl(url);
    requestHttp.headers.contentType = ContentType.json;

    final Map<String, dynamic> bodyParameter = {
      'question': request.question,
      'lucky': request.lucky,
    };

    requestHttp.write(jsonEncode(bodyParameter));

    final responce = await requestHttp.close();
    return JsonParseHelper.parse(responce);
  }
}
