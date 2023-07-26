import 'dart:convert';

import 'package:flutter/foundation.dart';

extension Parse on HttpClientResponse {
  Future<Map<String, dynamic>> toParseMap() => transform(utf8.decoder)
      .toList()
      .then((value) => value.join())
      .then((value) => jsonDecode(value) as Map<String, dynamic>);
}
