// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpRequest {
  String get otp;
  String get mobileNumber;
  bool get owner;
  bool get user;

  /// Serializes this VerifyOtpRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VerifyOtpRequest(otp: $otp, mobileNumber: $mobileNumber, owner: $owner, user: $user)';
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _VerifyOtpRequest implements VerifyOtpRequest {
  const _VerifyOtpRequest(
      {required this.otp,
      required this.mobileNumber,
      this.owner = true,
      this.user = false});

  @override
  final String otp;
  @override
  final String mobileNumber;
  @override
  @JsonKey()
  final bool owner;
  @override
  @JsonKey()
  final bool user;

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyOtpRequestToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'VerifyOtpRequest(otp: $otp, mobileNumber: $mobileNumber, owner: $owner, user: $user)';
  }
}

// dart format on
