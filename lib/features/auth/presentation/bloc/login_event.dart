part of 'login_bloc.dart';

@freezedOnBloc
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.sendOtp(String mobileNumber) = _SendOtpEvent;

  const factory LoginEvent.verifyOtp(String mobileNumber, String otp) = _VerifyOtpEvent;

  const factory LoginEvent.registerOrLogin(
    String mobileNumber,
    String otp, {
    String? name,
  }) = _RegisterOrLoginEvent;
}
