import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.connectionError:
        if (dioError.message?.contains("SocketException") ?? false) {
          message = 'No Internet';
          break;
        } else if (dioError.message?.contains('HandshakeException') ?? false) {
          message = 'Response data not found';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    return switch (statusCode) {
      400 => error['message'] ?? 'Bad request',
      401 => '401',
      // 401 => error['message'] ?? 'Unauthorized',
      403 => error['message'] ?? 'Forbidden',
      404 => error is String
          ? isHTML(error)
              ? 'Not Found'
              : error
          : error is Map
              ? error['message']
              : 'Not found',
      420 => 'Session Expired. Please LogIn again',
      500 => error['message'] ?? 'Internal server error',
      502 => error['message'] ?? 'Server unavailable',
      _ => 'Oops something went wrong'
    };
  }

  @override
  String toString() => message;

  bool isHTML(String str) {
    final RegExp htmlRegExp = RegExp('<[^>]*>', multiLine: true, caseSensitive: false);
    return htmlRegExp.hasMatch(str);
  }
}
