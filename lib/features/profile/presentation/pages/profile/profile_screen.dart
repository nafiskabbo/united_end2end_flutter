import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/widgets/error_view.dart';
import 'package:united_end2end/core/widgets/loading_view.dart';
import 'package:united_end2end/features/profile/data/remote/dto/user.dart';
import 'package:united_end2end/features/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<UserBloc, Ds<UserState>>(
          bloc: getIt<UserBloc>(),
          builder: (BuildContext context, Ds<UserState> state) {
            return switch (state) {
              SuccessState(:final data) => switch (data) {
                  UserDetailsLoaded(:final value) => _buildProfileDetails(context, value),
                },
              ErrorState(:final error) => ErrorView(error: error),
              _ => const LoadingView(),
            };
          },
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context, User data) {
    return ListView(
      children: [],
    );
  }
}
