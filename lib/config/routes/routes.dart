import 'package:united_end2end/features/auth/presentation/pages/otp_screen.dart';

enum Routes {
  splash,
  main,
  // Login
  createAccount,
  otp(pathParameters: {OtpScreen.argPhoneNumber}),
  // Bottom Navigation
  home,
  profile,
  editProfile(pathOverride: 'edit'),
  // Others
  settings,
  webview,
  ;

  const Routes({
    this.pathOverride,
    this.pathParameters,
  });
  final String? pathOverride;
  final Set<String>? pathParameters;

  String get path {
    final initialPath = pathOverride ?? '/$name';
    if (pathParameters != null) {
      return '$initialPath/:${pathParameters!.join('/:')}';
    } else {
      return initialPath;
    }
  }
}
