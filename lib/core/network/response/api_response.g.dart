// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseData<T> _$ApiResponseDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseData<T>(
      fromJsonT(json['result']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseDataToJson<T>(
  ApiResponseData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': toJsonT(instance.result),
      'runtimeType': instance.$type,
    };

ApiResponseError<T> _$ApiResponseErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseError<T>(
      (json['code'] as num?)?.toInt(),
      json['error'] as String?,
      json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseErrorToJson<T>(
  ApiResponseError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
