import 'dart:async';

import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:united_end2end/features/dashboard/data/remote/dto/dashboard/dashboard_data.dart';
import 'package:united_end2end/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, Ds<DashboardState>> {
  final DashboardRepository _dashboardRepository;

  DashboardBloc(this._dashboardRepository) : super(const Ds.initial()) {
    on<DashboardEvent>((event, emit) async {
      switch (event) {
        case final _GetDashboardDetailsEvent e:
          await _getDashboardDetails(e, emit);
          break;
      }
    });

    add(const DashboardEvent.getDashboardDetails());
  }

  FutureOr<void> _getDashboardDetails(
    _GetDashboardDetailsEvent event,
    Emitter<Ds<DashboardState>> emit,
  ) async {
    emit(const Ds.loading());

    final result = await _dashboardRepository.getDashboardDetails();

    switch (result) {
      case SuccessState(:final data):
        emit(Ds.success(DashboardState.dashboardDetailsLoaded(data)));
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }
}
