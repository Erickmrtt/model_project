import 'package:http/http.dart' as http;

abstract class ApiService {
  late String? baseUrl;
  late String? path;
  late Map<String, String>? headers;
  late Map<String, dynamic>? body;

  ApiService({
    this.baseUrl,
    this.path,
    this.headers,
    this.body,
  });
}
