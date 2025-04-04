part of 'user_bloc.dart';

@freezedOnBloc
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserDetails() = _GetUserDetailsEvent;
  const factory UserEvent.updateUserDetails(UpdateUserRequest req) =
      _UpdateUserDetailsEvent;
}
