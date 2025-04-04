import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/features/dashboard/data/remote/api/dashboard_api.dart';
import 'package:united_end2end/features/dashboard/data/remote/dto/dashboard/dashboard_data.dart';
import 'package:united_end2end/features/dashboard/domain/repository/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardApi _dashboardApi;

  const DashboardRepositoryImpl(this._dashboardApi);

  @override
  Future<Ds<DashboardData>> getDashboardDetails() async {
    final res = await _dashboardApi.getDashboardDetails();
    return switch (res) {
      ApiResponseData(:final result) => Ds.success(result),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }
}
