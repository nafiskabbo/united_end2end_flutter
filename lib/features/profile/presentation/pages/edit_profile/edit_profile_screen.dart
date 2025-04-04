import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/utils/view_utils.dart';
import 'package:united_end2end/features/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, Ds<UserState>>(
      bloc: getIt<UserBloc>(),
      listener: _handleListeners,
      child: _buildProfileDetails(context),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return ListView(
      children: [],
    );
  }

  void _handleListeners(BuildContext context, Ds<UserState> state) => switch (state) {
        LoadingState() => context.showLoadingDialog(),
        ErrorState(:final error) => () {
            context.pop();
            context.showErrorSnackBar(error);
          }(),
        SuccessState(:final data) => switch (data) {
            UserDetailsLoaded(:final value) => () {
                context.pop();
                context.showSuccessSnackBar('Profile updated successfully!');
                context.pop();
              }(),
            _ => null,
          },
        _ => null,
      };
}
