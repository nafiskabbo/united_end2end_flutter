// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  String get mobileNumber;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @override
  String toString() {
    return 'LoginEvent(mobileNumber: $mobileNumber)';
  }
}

/// @nodoc

class _SendOtpEvent implements LoginEvent {
  const _SendOtpEvent(this.mobileNumber);

  @override
  final String mobileNumber;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendOtpEvent &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @override
  String toString() {
    return 'LoginEvent.sendOtp(mobileNumber: $mobileNumber)';
  }
}

/// @nodoc

class _VerifyOtpEvent implements LoginEvent {
  const _VerifyOtpEvent(this.mobileNumber, this.otp);

  @override
  final String mobileNumber;
  final String otp;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOtpEvent &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp);

  @override
  String toString() {
    return 'LoginEvent.verifyOtp(mobileNumber: $mobileNumber, otp: $otp)';
  }
}

/// @nodoc

class _RegisterOrLoginEvent implements LoginEvent {
  const _RegisterOrLoginEvent(this.mobileNumber, this.otp, {this.name});

  @override
  final String mobileNumber;
  final String otp;
  final String? name;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterOrLoginEvent &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otp, name);

  @override
  String toString() {
    return 'LoginEvent.registerOrLogin(mobileNumber: $mobileNumber, otp: $otp, name: $name)';
  }
}

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc

class NavigateToOtpScreenState implements LoginState {
  const NavigateToOtpScreenState(this.phoneNumber);

  final String phoneNumber;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToOtpScreenState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'LoginState.navigateToOtpScreenState(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc

class NavigateToCompleteProfileScreenState implements LoginState {
  const NavigateToCompleteProfileScreenState(this.otp);

  final String otp;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToCompleteProfileScreenState &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @override
  String toString() {
    return 'LoginState.navigateToCompleteProfileScreenState(otp: $otp)';
  }
}

/// @nodoc

class NavigateToHomeScreenState implements LoginState {
  const NavigateToHomeScreenState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateToHomeScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.navigateToHomeScreenState()';
  }
}

// dart format on
