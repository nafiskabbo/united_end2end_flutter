import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/features/dashboard/data/remote/dto/dashboard/dashboard_data.dart';

abstract class DashboardRepository {
  Future<Ds<DashboardData>> getDashboardDetails();
}
