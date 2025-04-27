import 'package:athlete_app/core/env/environment.dart';
import 'package:athlete_app/core/errors/app_exceptions.dart';
import 'package:dio/dio.dart';

class ApiClient {
  late Dio _dio;
  String baseUrl = '';  // Base URL for API calls

  // Constructor to initialize the Dio client with base URL
  ApiClient({String? apiBaseUrl}) {
    baseUrl = apiBaseUrl ?? Environment.apiBaseUrl; // Fallback to default URL
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(seconds: 5), // 5 seconds timeout
        receiveTimeout: Duration(seconds: 3), // 3 seconds timeout
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  // GET Request
  Future<Response> get(String endpoint, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParams);
      return response; // Return the response data
    } on DioException catch (e) {
      throw _handleError(e);  // Handle errors
    }
  }

  // POST Request
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;  // Return the response data
    } on DioException catch (e) {
      throw _handleError(e);  // Handle errors
    }
  }

  // PUT Request
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;  // Return the response data
    } on DioException catch (e) {
      throw _handleError(e);  // Handle errors
    }
  }

  // DELETE Request
  Future<Response> delete(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(endpoint, data: data);
      return response;  // Return the response data
    } on DioException catch (e) {
      throw _handleError(e);  // Handle errors
    }
  }

  // Private method to handle error responses
  AppException _handleError(DioException e) {
    String errorMessage = 'Unknown error occurred';
    
    // DioExceptionType handling
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Connection timeout occurred';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Receive timeout occurred';
        break;
      case DioExceptionType.badResponse:
        errorMessage = 'Bad response from server';
        break;
      case DioExceptionType.cancel:
        errorMessage = 'Request was canceled';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Send timeout occurred';
        break;
      default:
        errorMessage = 'An unknown error occurred';
        break;
    }

    // If a response is available, we can analyze the status code further
    if (e.response != null) {
      switch (e.response!.statusCode) {
        case 400:
          errorMessage = 'Bad request';
          break;
        case 401:
          errorMessage = 'Unauthorized access';
          break;
        case 500:
          errorMessage = 'Server error';
          break;
        default:
          errorMessage = e.response?.statusMessage ?? errorMessage;
      }
    }

    // Throw a general exception for non-API errors or API errors
    return AppException(message: errorMessage);
  }
}
