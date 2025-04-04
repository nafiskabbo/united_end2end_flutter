import 'package:united_end2end/core/network/client/api_client.dart';
import 'package:united_end2end/core/network/client/method_type.dart';
import 'package:united_end2end/core/network/network_config.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/features/auth/data/remote/dto/send_otp_response.dart';
import 'package:united_end2end/features/auth/data/remote/dto/verify_otp_response.dart';
import 'package:united_end2end/features/auth/data/remote/request/verify_otp_request.dart';

class LoginApi {
  final ApiClient _apiClient;

  const LoginApi(this._apiClient);

  Future<ApiResponse<SendOtpResponse>> sendOtp(String mobileNumber) async {
    return await _apiClient.request(
      NetworkConfig.registerUrl,
      MethodType.post,
      queryParameters: {'telephone': mobileNumber},
      fromJsonT: (response) => sendOtpResponseFromJson(response),
    );
  }

  Future<ApiResponse<VerifyOtpResponse>> verifyOtp(
    String mobileNumber,
    String otp,
  ) async {
    return await _apiClient.request(
      NetworkConfig.loginUrl,
      MethodType.post,
      payload: VerifyOtpRequest(otp: otp, mobileNumber: mobileNumber).toJson(),
      fromJsonT: (response) => verifyOtpResponseFromJson(response),
    );
  }


}
