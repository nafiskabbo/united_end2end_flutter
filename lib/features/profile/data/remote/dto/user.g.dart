// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String?,
      mobile: json['mobile'] as String,
      alternateMobile: (json['alternateMobile'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      device: json['device'] as String,
      deviceToken: json['deviceToken'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      aadharUrl: json['aadharUrl'] as String?,
    );
