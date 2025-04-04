import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

VerifyOtpResponse verifyOtpResponseFromJson(Map<String, dynamic> data) =>
    VerifyOtpResponse.fromJson(data);

@freezedOnResponse
abstract class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "registered") required bool registered,
  }) = _VerifyOtpResponse;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}
