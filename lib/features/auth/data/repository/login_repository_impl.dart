import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/core/services/shared_prefs_helper.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/features/auth/data/remote/api/login_api.dart';
import 'package:united_end2end/features/auth/data/remote/dto/send_otp_response.dart';
import 'package:united_end2end/features/auth/data/remote/dto/verify_otp_response.dart';
import 'package:united_end2end/features/auth/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginApi _loginApi;
  final SharedPrefsHelper _sharedPrefs;

  const LoginRepositoryImpl(this._loginApi, this._sharedPrefs);

  @override
  Future<Ds<SendOtpResponse>> sendOtp(String mobileNumber) async {
    final res = await _loginApi.sendOtp(mobileNumber);
    return switch (res) {
      ApiResponseData(:final result) =>
        result.success ? Ds.success(result) : const Ds.error('Please try again'),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }

  @override
  Future<Ds<VerifyOtpResponse>> verifyOtp(
    String mobileNumber,
    String otp,
  ) async {
    final res = await _loginApi.verifyOtp(mobileNumber, otp);
    return switch (res) {
      ApiResponseData(:final result) => result.success
          ? Ds.success(result)
          : const Ds.error(
              'You entered wrong OTP. Please check your OTP Again and input.',
            ),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }

  @override
  Future<Ds<VerifyOtpResponse>> registerOrLogin(
    String mobileNumber,
    String otp, {
    String? name,
  }) async {
    final res = await _loginApi.verifyOtp(mobileNumber, otp);
    return switch (res) {
      ApiResponseData(:final result) => result.success
          ? () {
              // Set the session token
              _sharedPrefs.setSessionToken = result.toString();
              return Ds.success(result);
            }()
          : const Ds.error('Please try again'),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }
}
