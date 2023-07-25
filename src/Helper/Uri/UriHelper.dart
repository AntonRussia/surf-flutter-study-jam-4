class UriHelper {
  final String host;
  final String apiKey;
  UriHelper({required this.host, required this.apiKey});

  Uri makeUrl(String path, {Map<String, dynamic>? urlParametrs}) {
    if (urlParametrs == null) return Uri.parse('https://$host$path$apiKey');
    return Uri.https(host, path, urlParametrs);
  }
}
