part of 'dashboard_bloc.dart';

@freezedOnBloc
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.dashboardDetailsLoaded(DashboardData value) = DashboardDetailsLoaded;
}
