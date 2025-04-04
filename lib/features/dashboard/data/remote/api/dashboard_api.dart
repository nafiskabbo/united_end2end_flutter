import 'package:united_end2end/core/network/client/api_client.dart';
import 'package:united_end2end/core/network/client/method_type.dart';
import 'package:united_end2end/core/network/network_config.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/features/dashboard/data/remote/dto/dashboard/dashboard_data.dart';

class DashboardApi {
  final ApiClient _apiClient;

  const DashboardApi(this._apiClient);

  Future<ApiResponse<DashboardData>> getDashboardDetails() async {
    return await _apiClient.request(
      NetworkConfig.dashboardUrl,
      MethodType.get,
      fromJsonT: (response) => dashboardDataFromJson(response),
    );
  }
}
