import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const freezedOnResponse = Freezed(
  copyWith: false,
  equal: true,
  fromJson: true,
  toJson: false,
);

const freezedOnResponseWithToJson = Freezed(
  copyWith: true,
  fromJson: true,
  toJson: true,
);

const freezedOnRequest = Freezed(
  copyWith: false,
  equal: false,
  fromJson: false,
  toJson: true,
);

const freezedOnBloc = Freezed(
  copyWith: false,
  equal: true,
  fromJson: false,
  toJson: false,
);

const freezedOnBlocState = Freezed(
  copyWith: true,
  equal: true,
  fromJson: false,
  toJson: false,
);

const freezedOnSharedPrefDataClass = Freezed(
  copyWith: true,
  equal: false,
  fromJson: true,
  toJson: true,
);

extension NumExt on num {
  // Padding
  EdgeInsetsDirectional get allPadding => EdgeInsetsDirectional.all(toDouble());
  EdgeInsetsDirectional get verticalPadding =>
      EdgeInsetsDirectional.symmetric(vertical: toDouble());
  EdgeInsetsDirectional get horizontalPadding =>
      EdgeInsetsDirectional.symmetric(horizontal: toDouble());

  EdgeInsetsDirectional get startPadding => EdgeInsetsDirectional.only(start: toDouble());
  EdgeInsetsDirectional get endPadding => EdgeInsetsDirectional.only(end: toDouble());
  EdgeInsetsDirectional get topPadding => EdgeInsetsDirectional.only(top: toDouble());
  EdgeInsetsDirectional get bottomPadding => EdgeInsetsDirectional.only(bottom: toDouble());

  // Border
  OutlinedBorder roundedBorder({
    BorderSide side = BorderSide.none,
  }) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(toDouble()),
        side: side,
      );

  // Duration
  Duration get microseconds => Duration(microseconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get days => Duration(days: toInt());
}
