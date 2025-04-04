import 'dart:async';

import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:united_end2end/features/auth/domain/repository/login_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, Ds<LoginState>> {
  final LoginRepository loginRepository;

  LoginBloc(this.loginRepository) : super(const Ds.initial()) {
    on<LoginEvent>((event, emit) async {
      switch (event) {
        case final _SendOtpEvent e:
          await _sendOtpEvent(e, emit);
          break;

        case final _VerifyOtpEvent e:
          await _verifyOtpEvent(e, emit);
          break;

        case final _RegisterOrLoginEvent e:
          await _registerOrLogin(e, emit);
          break;
      }
    });
  }

  FutureOr<void> _sendOtpEvent(
    _SendOtpEvent event,
    Emitter<Ds<LoginState>> emit,
  ) async {
    emit(const Ds.loading());

    final result = await loginRepository.sendOtp(event.mobileNumber);
    switch (result) {
      case SuccessState():
        emit(Ds.success(NavigateToOtpScreenState(event.mobileNumber)));
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }

  FutureOr<void> _verifyOtpEvent(
    _VerifyOtpEvent event,
    Emitter<Ds<LoginState>> emit,
  ) async {
    emit(const Ds.loading());

    final result = await loginRepository.verifyOtp(event.mobileNumber, event.otp);

    switch (result) {
      case SuccessState(:final data):
        if (data.registered) {
          add(LoginEvent.registerOrLogin(event.mobileNumber, event.otp));
        } else {
          emit(Ds.success(NavigateToCompleteProfileScreenState(event.otp)));
        }
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }

  FutureOr<void> _registerOrLogin(
    _RegisterOrLoginEvent event,
    Emitter<Ds<LoginState>> emit,
  ) async {
    emit(const Ds.loading());

    final result =
        await loginRepository.registerOrLogin(event.mobileNumber, event.otp, name: event.name);

    switch (result) {
      case SuccessState():
        emit(const Ds.success(NavigateToHomeScreenState()));
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }
}
