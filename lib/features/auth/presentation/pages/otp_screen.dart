import 'package:united_end2end/config/routes/routes.dart';
import 'package:united_end2end/config/themes/styles.dart';
import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/core/widgets/scaffold/app_bar_scaffold.dart';
import 'package:united_end2end/features/auth/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OtpScreen extends StatefulWidget {
  static const argPhoneNumber = 'phoneNumber';

  final Map<String, String> pathParams;

  const OtpScreen({super.key, required this.pathParams});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final controller = TextEditingController();
  late String phoneNumber;
  String? validationErrorText;
  bool showError = false;

  @override
  void initState() {
    super.initState();
    phoneNumber = widget.pathParams[OtpScreen.argPhoneNumber].orEmpty;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, Ds<LoginState>>(
      bloc: getIt<LoginBloc>(),
      // buildWhen: (previous, current) =>
      //     current.whenOrNull(error: (_) => true).onFalse,
      listener: _handleListeners,
      child: AppBarScaffold(
        pageTitle: 'OTP',
        children: [
          gapH16,
        ],
      ),
    );
  }

  void _handleListeners(BuildContext context, Ds<LoginState> state) => switch (state) {
        // LoadingState() => context.showLoadingDialog(),
        ErrorState(:final error) => () {
            context.pop();
          }(),
        SuccessState(:final data) => switch (data) {
            NavigateToCompleteProfileScreenState(:final otp) => () {
                context.pop();
              }(),
            NavigateToHomeScreenState() => () {
                context.pop();
                context.goNamed(Routes.home.name);
              }(),
            _ => null,
          },
        _ => null,
      };
}
