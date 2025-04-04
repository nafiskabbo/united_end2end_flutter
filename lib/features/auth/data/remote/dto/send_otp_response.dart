import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response.freezed.dart';
part 'send_otp_response.g.dart';

SendOtpResponse sendOtpResponseFromJson(Map<String, dynamic> data) =>
    SendOtpResponse.fromJson(data);

@freezedOnResponse
abstract class SendOtpResponse with _$SendOtpResponse {
  const factory SendOtpResponse({
    @JsonKey(name: "success") required bool success,
  }) = _SendOtpResponse;

  factory SendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseFromJson(json);
}
