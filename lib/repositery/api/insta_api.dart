import 'dart:convert';
import 'package:insta_new/repositery/model/insta_profile.dart';
import 'api_client.dart';
import 'package:http/http.dart' as http;

// class InstaApi {
//   final ApiClient apiClient = ApiClient();

//   Future<InstaUser> getInstaUser() async {
//     const String trendingPath =
//         'https://rocketapi-for-instagram.p.rapidapi.com/instagram/user/get_info';

//     final body = {"username": 'kyliejenner'};

//     try {
//       http.Response response =
//           await apiClient.invokeAPI(trendingPath, 'POST', body);

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         return InstaUser.fromJson(data);
//       } else {
//         throw Exception(
//             'Failed to fetch user info. Status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Error fetching user info: $e');
//     }
//   }
// }
class InstaApi {
  ApiClient apiClient = ApiClient();

  Future<InstaUser> getInstaUser() async {
    String url =
        'https://rocketapi-for-instagram.p.rapidapi.com/instagram/user/get_info';

    // Body to be sent in the POST request
    var body = {"username": "kyliejenner"};

    try {
      // Make the API call
      http.Response response = await apiClient.invokeAPI(url, 'POST', body);

      // Debugging output for response
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      // Check for successful response (status code 200)
      if (response.statusCode == 200) {
        // Deserialize the response to InstaUser object
        return InstaUser.fromJson(jsonDecode(response.body));
      } else {
        throw Exception(
            'Failed to fetch user: ${response.statusCode}, ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
      rethrow; // Propagate the error
    }
  }
}
