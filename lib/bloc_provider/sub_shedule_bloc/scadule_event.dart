part of 'scadule_bloc.dart';

@freezed
class ScaduleEvent with _$ScaduleEvent {
  const factory ScaduleEvent.started(String code) = _Started;
}
