import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/network/response/api_response.dart';
import 'package:united_end2end/core/network/response/base_message/base_message_response.dart';
import 'package:united_end2end/core/utils/primitive_utils.dart';
import 'package:united_end2end/features/profile/data/remote/api/user_api.dart';
import 'package:united_end2end/features/profile/data/remote/dto/user.dart';
import 'package:united_end2end/features/profile/data/remote/request/update_user_request.dart';
import 'package:united_end2end/features/profile/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _userApi;

  const UserRepositoryImpl(this._userApi);

  @override
  Future<Ds<User>> getUserDetails() async {
    final res = await _userApi.getUserDetails();
    return switch (res) {
      ApiResponseData(:final result) => Ds.success(result),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }

  @override
  Future<Ds<User>> updateUserDetails(UpdateUserRequest req) async {
    final res = await _userApi.updateUserDetails(req);
    return switch (res) {
      ApiResponseData(:final result) => Ds.success(result),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }

  @override
  Future<Ds<BaseMessageResponse>> logout() async {
    final res = await _userApi.logout();
    return switch (res) {
      ApiResponseData(:final result) =>
        result.success ? Ds.success(result) : Ds.error(result.message.orError),
      ApiResponseError(:final error, :final message) => Ds.error((message ?? error).orError),
    };
  }
}
