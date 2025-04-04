part of 'login_bloc.dart';

@freezedOnBloc
sealed class LoginState with _$LoginState {
  const factory LoginState.navigateToOtpScreenState(String phoneNumber) = NavigateToOtpScreenState;
  const factory LoginState.navigateToCompleteProfileScreenState(String otp) =
      NavigateToCompleteProfileScreenState;
  const factory LoginState.navigateToHomeScreenState() = NavigateToHomeScreenState;
}
