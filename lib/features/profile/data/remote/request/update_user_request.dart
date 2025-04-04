import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@freezedOnRequest
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String name,
    required String emailAddress,
    required String mobileNumber,
    required List<String> alternateNumber,
    String? aadharCardUrl,
    @Default(true) bool active,
    String? device,
    String? deviceToken,
  }) = _UpdateUserRequest;
}
