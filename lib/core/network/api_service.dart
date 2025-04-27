import 'dart:convert';
import 'package:athlete_app/core/errors/app_exceptions.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Handle successful response
        print('Data fetched: ${json.decode(response.body)}');
      } else if (response.statusCode == 400) {
        throw BadRequestException(message: 'Bad request error.');
      } else if (response.statusCode == 401) {
        throw UnauthorizedException(message: 'Unauthorized access.');
      } else if (response.statusCode == 500) {
        throw ServerException(message: 'Server error occurred.');
      } else {
        throw ApiException(message: 'Unexpected API error occurred.');
      }
    } catch (e) {
      if (e is ApiException) {
        // Handle specific API exceptions
        print(e.toString());
      } else {
        // Handle general exceptions
        throw GeneralException(message: 'An unknown error occurred.');
      }
    }
  }
}
