part of 'user_bloc.dart';

@freezedOnBloc
sealed class UserState with _$UserState {
  const factory UserState.userDetailsLoaded(User value) = UserDetailsLoaded;
}
