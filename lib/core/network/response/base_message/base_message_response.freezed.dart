// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseMessageResponse {
  String? get message;
  bool get success;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseMessageResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  @override
  String toString() {
    return 'BaseMessageResponse(message: $message, success: $success)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _BaseMessageResponse implements BaseMessageResponse {
  const _BaseMessageResponse({this.message, required this.success});
  factory _BaseMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseMessageResponseFromJson(json);

  @override
  final String? message;
  @override
  final bool success;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseMessageResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  @override
  String toString() {
    return 'BaseMessageResponse(message: $message, success: $success)';
  }
}

// dart format on
