part of 'store_t_bloc.dart';

@freezed
class StoreTEvent with _$StoreTEvent {
  const factory StoreTEvent.started(String code, List<SubwayModel> list) = _Started;
}
