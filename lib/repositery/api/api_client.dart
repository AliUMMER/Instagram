import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<http.Response> invokeAPI(
      String path, String method, Object? body) async {
    Map<String, String> headerParams = {
      'Content-Type': 'application/json',
    };

    // Ensure body is a valid JSON string (if not null)
    String? encodedBody = body != null ? jsonEncode(body) : null;
    print('Request body: $encodedBody'); // Debugging output

    // Determine the type of request
    switch (method) {
      case "POST":
        return await http.post(
          Uri.parse(path),
          headers: {
            'content-Type': 'application/json',
            'X-RapidAPI-Key':
                'a3c2b37721mshb0fc7447dae012dp121961jsn7e1fa8577e8a',
            'X-RapidAPI-Host': 'rocketapi-for-instagram.p.rapidapi.com',
          },
          body: encodedBody,
        );
      case "GET":
        return await http.get(
          Uri.parse(path),
          headers: headerParams,
        );
      case "PUT":
        return await http.put(
          Uri.parse(path),
          headers: headerParams,
          body: encodedBody,
        );
      case "DELETE":
        return await http.delete(
          Uri.parse(path),
          headers: headerParams,
          body: encodedBody,
        );
      default:
        throw Exception("Unsupported HTTP method: $method");
    }
  }
}
