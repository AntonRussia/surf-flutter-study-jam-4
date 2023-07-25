import 'dart:convert';
import 'dart:io';

class JsonParseHelper {
  static Future<Map<String, dynamic>> parse(
          HttpClientResponse responce) async =>
      responce
          .transform(utf8.decoder)
          .toList()
          .then((value) => value.join())
          .then((value) => jsonDecode(value) as Map<String, dynamic>);
}
