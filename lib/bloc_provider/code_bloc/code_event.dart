part of 'code_bloc.dart';

@freezed
class CodeEvent with _$CodeEvent {
  const factory CodeEvent.started(String name,String line) = _Started;
}
