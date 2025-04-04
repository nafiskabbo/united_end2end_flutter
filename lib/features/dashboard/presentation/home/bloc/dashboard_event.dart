part of 'dashboard_bloc.dart';

@freezedOnBloc
sealed class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.getDashboardDetails() = _GetDashboardDetailsEvent;
}
