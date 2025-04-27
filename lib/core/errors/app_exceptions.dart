// Custom exceptions for handling errors

/// Base class for all exceptions in the app
class AppException implements Exception {
  final String message;
  final String? prefix;

  AppException({required this.message, this.prefix});

  @override
  String toString() {
    return '$prefix$message';
  }
}

/// Exception thrown when there is an API error
class ApiException extends AppException {
  ApiException({required String message}) : super(message: message, prefix: 'API Exception: ');
}

/// Exception thrown when there is a bad request (e.g., 400 HTTP status)
class BadRequestException extends ApiException {
  BadRequestException({required String message}) : super(message: message);
}

/// Exception thrown for unauthorized access (e.g., 401 HTTP status)
class UnauthorizedException extends ApiException {
  UnauthorizedException({required String message}) : super(message: message);
}

/// Exception thrown when the server is not reachable (e.g., 500 HTTP status)
class ServerException extends ApiException {
  ServerException({required String message}) : super(message: message);
}

/// Exception thrown for timeouts
class TimeoutException extends AppException {
  TimeoutException({required String message}) : super(message: message, prefix: 'Timeout Exception: ');
}

/// Exception thrown when there's no internet connection
class NoInternetConnectionException extends AppException {
  NoInternetConnectionException({required String message})
      : super(message: message, prefix: 'No Internet Exception: ');
}

/// General exception for unexpected errors
class GeneralException extends AppException {
  GeneralException({required String message}) : super(message: message, prefix: 'General Exception: ');
}
