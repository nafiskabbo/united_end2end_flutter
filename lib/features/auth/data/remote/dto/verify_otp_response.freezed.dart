// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpResponse {
  @JsonKey(name: "success")
  bool get success;
  @JsonKey(name: "registered")
  bool get registered;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOtpResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.registered, registered) ||
                other.registered == registered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, registered);

  @override
  String toString() {
    return 'VerifyOtpResponse(success: $success, registered: $registered)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _VerifyOtpResponse implements VerifyOtpResponse {
  const _VerifyOtpResponse(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "registered") required this.registered});
  factory _VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "registered")
  final bool registered;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtpResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.registered, registered) ||
                other.registered == registered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, registered);

  @override
  String toString() {
    return 'VerifyOtpResponse(success: $success, registered: $registered)';
  }
}

// dart format on
