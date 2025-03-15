import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/insta_model.dart';
import 'api_client.dart';

class InstamediaApi {
  final ApiClient apiClient = ApiClient();

  static const String _mediaEndpoint =
      'https://rocketapi-for-instagram.p.rapidapi.com/instagram/user/get_media';

  Future<InstaMedia> getInstaMedia() async {
    final Map<String, dynamic> requestBody = {
      "id": 12281817,
      "count": 12,
      "max_id": null,
    };

    try {
      final http.Response response =
          await apiClient.invokeAPI(_mediaEndpoint, 'POST', requestBody);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return InstaMedia.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to fetch media. Status code: ${response.statusCode}. Response: ${response.body}');
      }
    } catch (e) {
      throw Exception('An error occurred while fetching media: $e');
    }
  }
}
