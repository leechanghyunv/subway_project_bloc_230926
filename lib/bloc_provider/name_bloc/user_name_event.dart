part of 'user_name_bloc.dart';

@freezed
class UserNameEvent with _$UserNameEvent {
  const factory UserNameEvent.started(String name) = _Started;
}
