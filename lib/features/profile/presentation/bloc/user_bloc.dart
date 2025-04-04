import 'dart:async';

import 'package:united_end2end/core/bloc/data_state.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/services/shared_prefs.dart';
import 'package:united_end2end/core/utils/common_utils.dart';
import 'package:united_end2end/features/profile/data/remote/dto/user.dart';
import 'package:united_end2end/features/profile/data/remote/request/update_user_request.dart';
import 'package:united_end2end/features/profile/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, Ds<UserState>> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(const Ds.initial()) {
    on<UserEvent>((event, emit) async {
      switch (event) {
        case final _GetUserDetailsEvent e:
          await _getUserDetails(e, emit);
          break;

        case final _UpdateUserDetailsEvent e:
          await _updateUserDetails(e, emit);
          break;
      }
    });

    add(const UserEvent.getUserDetails());
  }

  FutureOr<void> _getUserDetails(
    _GetUserDetailsEvent event,
    Emitter<Ds<UserState>> emit,
  ) async {
    emit(const Ds.loading());

    final result = await userRepository.getUserDetails();

    switch (result) {
      case SuccessState(:final data):
        emit(Ds.success(UserState.userDetailsLoaded(data)));
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }

  FutureOr<void> _updateUserDetails(
    _UpdateUserDetailsEvent event,
    Emitter<Ds<UserState>> emit,
  ) async {
    emit(const Ds.loading());

    final result = await userRepository.updateUserDetails(event.req);

    switch (result) {
      case SuccessState(:final data):
        emit(Ds.success(UserState.userDetailsLoaded(data)));
        break;

      case ErrorState(:final error):
        emit(Ds.error(error));
        break;

      default:
        break;
    }
  }

  FutureOr<void> logout() async {
    await userRepository.logout();
    getIt<SharedPrefs>().clear();
  }
}
