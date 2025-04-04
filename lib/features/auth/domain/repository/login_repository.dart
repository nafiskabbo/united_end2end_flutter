import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/features/auth/data/remote/dto/send_otp_response.dart';
import 'package:united_end2end/features/auth/data/remote/dto/verify_otp_response.dart';

abstract class LoginRepository {
  Future<Ds<SendOtpResponse>> sendOtp(String mobileNumber);
  Future<Ds<VerifyOtpResponse>> verifyOtp(String mobileNumber, String otp);
  Future<Ds<VerifyOtpResponse>> registerOrLogin(
    String mobileNumber,
    String otp, {
    String? name,
  });
}
