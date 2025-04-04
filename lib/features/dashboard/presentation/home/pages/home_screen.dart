import 'package:united_end2end/config/routes/routes.dart';
import 'package:united_end2end/config/themes/styles.dart';
import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/services/shared_prefs.dart';
import 'package:united_end2end/core/widgets/error_view.dart';
import 'package:united_end2end/core/widgets/loading_view.dart';
import 'package:united_end2end/core/widgets/scaffold/app_bar_scaffold.dart';
import 'package:united_end2end/features/dashboard/data/remote/dto/dashboard/dashboard_data.dart';
import 'package:united_end2end/features/dashboard/presentation/home/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      pageTitle: 'Check your overview here',
      child: BlocConsumer<DashboardBloc, Ds<DashboardState>>(
        bloc: getIt<DashboardBloc>(),
        listenWhen: (previous, current) =>
            current is ErrorState && (current as ErrorState).error == '401',
        listener: (context, state) {
          switch (state) {
            case ErrorState(error: '401'):
              getIt<SharedPrefs>().clear();
              context.goNamed(Routes.createAccount.name);
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          return switch (state) {
            SuccessState(:final data) => _buildSuccessState(context, data.value),
            ErrorState(:final error) => ErrorView(error: error),
            _ => const LoadingView(),
          };
        },
      ),
    );
  }

  Widget _buildSuccessState(BuildContext context, DashboardData data) {
    return ListView(
      children: [
        gapH16,
        gapH32,
      ],
    );
  }
}
