import 'package:united_end2end/core/network/client/api_client.dart';
import 'package:united_end2end/core/network/client/method_type.dart';
import 'package:united_end2end/core/network/network_config.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/core/network/response/base_message/base_message_response.dart';
import 'package:united_end2end/features/profile/data/remote/dto/user.dart';
import 'package:united_end2end/features/profile/data/remote/request/update_user_request.dart';

class UserApi {
  final ApiClient _apiClient;

  const UserApi(this._apiClient);

  Future<ApiResponse<User>> getUserDetails() async {
    return await _apiClient.request(
      NetworkConfig.userDetailsUrl,
      MethodType.get,
      fromJsonT: (response) => userFromJson(response),
    );
  }

  Future<ApiResponse<User>> updateUserDetails(UpdateUserRequest req) async {
    return await _apiClient.request(
      NetworkConfig.updateUserDetailsUrl,
      MethodType.post,
      payload: req.toJson(),
      fromJsonT: (response) => userFromJson(response),
    );
  }

  Future<ApiResponse<BaseMessageResponse>> logout() async {
    return await _apiClient.request(
      NetworkConfig.logoutUrl,
      MethodType.post,
      fromJsonT: (response) => baseMessageResponseFromJson(response),
    );
  }
}
