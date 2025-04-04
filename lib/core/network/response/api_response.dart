import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

ApiResponse<T> apiResponseFromJson<T>(
  Map<String, dynamic> data,
  T Function(dynamic) fromJsonT,
) =>
    ApiResponse<T>.fromJson(
      data,
      (jsonData) => fromJsonT(jsonData),
    );

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.data(T result) = ApiResponseData;
  const factory ApiResponse.error(int? code, String? error, String? message) =
      ApiResponseError;

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
