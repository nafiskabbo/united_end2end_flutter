import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request.freezed.dart';
part 'verify_otp_request.g.dart';

@freezedOnRequest
abstract class VerifyOtpRequest with _$VerifyOtpRequest {
  const factory VerifyOtpRequest({
    required String otp,
    required String mobileNumber,
    @Default(true) bool owner,
    @Default(false) bool user,
  }) = _VerifyOtpRequest;
}
