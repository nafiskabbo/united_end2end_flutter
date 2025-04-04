import 'package:dio/dio.dart';
import 'package:united_end2end/core/network/client/dio_exception.dart';
import 'package:united_end2end/core/network/client/method_type.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/main.dart';

import '../network_config.dart';
import '../interceptor/dio_interceptor.dart';

class ApiClient {
  // dio instance
  final Dio _client;
  final Map<String, String> _headers = {};

  // injecting dio instance
  ApiClient(this._client) {
    initHeaders();
    _client
      ..options.baseUrl = NetworkConfig.baseUrl
      ..options.connectTimeout = const Duration(seconds: NetworkConfig.connectionTimeout)
      ..options.receiveTimeout = const Duration(seconds: NetworkConfig.receiveTimeout)
      ..options.responseType = ResponseType.json
      ..options.headers = _headers
      ..interceptors.add(DioInterceptor())
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
  }

  void initHeaders() {
    _headers[NetworkConfig.serverAppKeyName] = NetworkConfig.serverAppKeyValue;
    _headers[NetworkConfig.serverAppIdName] = NetworkConfig.serverAppIdValue;
  }

  Future<ApiResponse<T>> request<T>(
    String path,
    MethodType method, {
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic json) fromJsonT,
    bool? showLoader,
  }) async {
    ApiResponse<T>? apiResponse;
    Response response;
    try {
      response = switch (method) {
        MethodType.get => await _client.get(
            path,
            data: payload,
            queryParameters: queryParameters,
          ),
        MethodType.post => await _client.post(
            path,
            data: payload,
            queryParameters: queryParameters,
          ),
        MethodType.postFormData => await _client.post(
            path,
            data: FormData.fromMap(payload!),
            queryParameters: queryParameters,
          ),
        MethodType.put => await _client.put(
            path,
            data: payload,
            queryParameters: queryParameters,
          ),
        MethodType.delete => await _client.delete(
            path,
            data: payload,
            queryParameters: queryParameters,
          ),
        MethodType.patch => await _client.patch(
            path,
            data: payload,
            queryParameters: queryParameters,
          )
      };
      final Map<String, dynamic> resData = response.data;

      void initApiResponse() {
        apiResponse = apiResponseFromJson<T>(resData, fromJsonT);
      }

      if (resData.containsKey('result')) {
        // Success
        resData['runtimeType'] = 'data';
        initApiResponse();
      } else if (resData.containsKey('error')) {
        // Error
        resData['runtimeType'] = 'error';
        initApiResponse();
      } else {
        apiResponse = const ApiResponse.error(0, defaultErrorMessage, defaultErrorMessage);
      }
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e);
      logger.e(error.toString());
      apiResponse = ApiResponse.error(0, error.message, error.message);
    } catch (e) {
      logger.e(e.toString());
      apiResponse = ApiResponse.error(0, e.toString(), e.toString());
    }
    logger.i(apiResponse.toString());
    return apiResponse!;
  }
}
