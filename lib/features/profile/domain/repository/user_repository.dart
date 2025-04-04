import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/network/response/base_message/base_message_response.dart';
import 'package:united_end2end/features/profile/data/remote/dto/user.dart';
import 'package:united_end2end/features/profile/data/remote/request/update_user_request.dart';

abstract class UserRepository {
  Future<Ds<User>> getUserDetails();
  Future<Ds<User>> updateUserDetails(UpdateUserRequest req);
  Future<Ds<BaseMessageResponse>> logout();
}
