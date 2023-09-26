part of 'store_b_bloc.dart';

@freezed
class StoreBEvent with _$StoreBEvent {
  const factory StoreBEvent.started(String code, List<SubwayModel> list) = _Started;
}
