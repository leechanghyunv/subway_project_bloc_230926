part of 'latlng_bloc.dart';

@freezed
class LatlngEvent with _$LatlngEvent {
  const factory LatlngEvent.started(String line) = _Started;
}
