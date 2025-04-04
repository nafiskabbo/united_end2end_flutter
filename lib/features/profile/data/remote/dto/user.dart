import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(Map<String, dynamic> data) => User.fromJson(data);

@freezedOnResponse
abstract class User with _$User {
  const factory User({
    required int id,
    required String name,
    String? emailAddress,
    required String mobile,
    required List<String> alternateMobile,
    required String device,
    required String deviceToken,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? aadharUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
