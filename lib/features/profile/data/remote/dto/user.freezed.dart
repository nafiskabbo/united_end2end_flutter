// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  int get id;
  String get name;
  String? get emailAddress;
  String get mobile;
  List<String> get alternateMobile;
  String get device;
  String get deviceToken;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get aadharUrl;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            const DeepCollectionEquality()
                .equals(other.alternateMobile, alternateMobile) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.aadharUrl, aadharUrl) ||
                other.aadharUrl == aadharUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      emailAddress,
      mobile,
      const DeepCollectionEquality().hash(alternateMobile),
      device,
      deviceToken,
      createdAt,
      updatedAt,
      aadharUrl);

  @override
  String toString() {
    return 'User(id: $id, name: $name, emailAddress: $emailAddress, mobile: $mobile, alternateMobile: $alternateMobile, device: $device, deviceToken: $deviceToken, createdAt: $createdAt, updatedAt: $updatedAt, aadharUrl: $aadharUrl)';
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _User implements User {
  const _User(
      {required this.id,
      required this.name,
      this.emailAddress,
      required this.mobile,
      required final List<String> alternateMobile,
      required this.device,
      required this.deviceToken,
      required this.createdAt,
      required this.updatedAt,
      this.aadharUrl})
      : _alternateMobile = alternateMobile;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? emailAddress;
  @override
  final String mobile;
  final List<String> _alternateMobile;
  @override
  List<String> get alternateMobile {
    if (_alternateMobile is EqualUnmodifiableListView) return _alternateMobile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alternateMobile);
  }

  @override
  final String device;
  @override
  final String deviceToken;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? aadharUrl;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            const DeepCollectionEquality()
                .equals(other._alternateMobile, _alternateMobile) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.aadharUrl, aadharUrl) ||
                other.aadharUrl == aadharUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      emailAddress,
      mobile,
      const DeepCollectionEquality().hash(_alternateMobile),
      device,
      deviceToken,
      createdAt,
      updatedAt,
      aadharUrl);

  @override
  String toString() {
    return 'User(id: $id, name: $name, emailAddress: $emailAddress, mobile: $mobile, alternateMobile: $alternateMobile, device: $device, deviceToken: $deviceToken, createdAt: $createdAt, updatedAt: $updatedAt, aadharUrl: $aadharUrl)';
  }
}

// dart format on
