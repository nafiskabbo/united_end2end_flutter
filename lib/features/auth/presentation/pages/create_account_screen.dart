import 'package:united_end2end/config/routes/routes.dart';
import 'package:united_end2end/config/themes/styles.dart';
import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/utils/view_utils.dart';
import 'package:united_end2end/core/widgets/edit_text/input_edit_text.dart';
import 'package:united_end2end/core/widgets/scaffold/app_bar_scaffold.dart';
import 'package:united_end2end/features/auth/presentation/bloc/login_bloc.dart';
import 'package:united_end2end/features/auth/presentation/pages/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController phoneNumberController = TextEditingController();
  String? phoneNumber;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, Ds<LoginState>>(
      bloc: getIt<LoginBloc>(),
      listener: _handleListeners,
      child: AppBarScaffold(
        pageTitle: 'Welcome to Banner App',
        // onButtonClick: () {
        //   if (phoneNumberController.text.isEmpty ||
        //       !_formKey.currentState!.validate()) {
        //     context.showErrorSnackBar('Please enter a valid phone number');
        //     return;
        //   }
        //   _formKey.currentState!.save();

        //   context.read<LoginBloc>().add(LoginEvent.sendOtp(phoneNumber!));
        // },
        children: [
          Form(
            key: _formKey,
            child: InputEditText(
              controller: phoneNumberController,
              // fieldName: 'Phone Number',
              // hintLabel: 'Enter your number',
              // isMandatory: false,
              // showPhoneCountryCode: true,
              onValueSaved: (value) => phoneNumber = value,
            ),
          ),
          gapH16,
        ],
      ),
    );
  }

  void _handleListeners(BuildContext context, Ds<LoginState> state) => switch (state) {
        LoadingState() => context.showLoadingDialog(),
        ErrorState(:final error) => () {
            context.pop();
            context.showErrorSnackBar(error);
          }(),
        SuccessState(:final data) => switch (data) {
            NavigateToOtpScreenState(:final phoneNumber) => () {
                context.pop();
                context.pushNamed(
                  Routes.otp.name,
                  pathParameters: {OtpScreen.argPhoneNumber: phoneNumber},
                );
              }(),
            _ => null,
          },
        _ => null,
      };
}
