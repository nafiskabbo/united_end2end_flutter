import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_message_response.freezed.dart';
part 'base_message_response.g.dart';

BaseMessageResponse baseMessageResponseFromJson(Map<String, dynamic> data) =>
    BaseMessageResponse.fromJson(data);

@freezedOnResponse
abstract class BaseMessageResponse with _$BaseMessageResponse {
  const factory BaseMessageResponse({
    String? message,
    required bool success,
  }) = _BaseMessageResponse;

  factory BaseMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseMessageResponseFromJson(json);
}
