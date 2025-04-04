// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserRequest {
  String get name;
  String get emailAddress;
  String get mobileNumber;
  List<String> get alternateNumber;
  String? get aadharCardUrl;
  bool get active;
  String? get device;
  String? get deviceToken;

  /// Serializes this UpdateUserRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UpdateUserRequest(name: $name, emailAddress: $emailAddress, mobileNumber: $mobileNumber, alternateNumber: $alternateNumber, aadharCardUrl: $aadharCardUrl, active: $active, device: $device, deviceToken: $deviceToken)';
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _UpdateUserRequest implements UpdateUserRequest {
  const _UpdateUserRequest(
      {required this.name,
      required this.emailAddress,
      required this.mobileNumber,
      required final List<String> alternateNumber,
      this.aadharCardUrl,
      this.active = true,
      this.device,
      this.deviceToken})
      : _alternateNumber = alternateNumber;

  @override
  final String name;
  @override
  final String emailAddress;
  @override
  final String mobileNumber;
  final List<String> _alternateNumber;
  @override
  List<String> get alternateNumber {
    if (_alternateNumber is EqualUnmodifiableListView) return _alternateNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alternateNumber);
  }

  @override
  final String? aadharCardUrl;
  @override
  @JsonKey()
  final bool active;
  @override
  final String? device;
  @override
  final String? deviceToken;

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserRequestToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'UpdateUserRequest(name: $name, emailAddress: $emailAddress, mobileNumber: $mobileNumber, alternateNumber: $alternateNumber, aadharCardUrl: $aadharCardUrl, active: $active, device: $device, deviceToken: $deviceToken)';
  }
}

// dart format on
