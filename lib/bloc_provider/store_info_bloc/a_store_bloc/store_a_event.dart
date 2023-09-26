part of 'store_a_bloc.dart';

@freezed
class StoreAEvent with _$StoreAEvent {
  const factory StoreAEvent.started(String code, List<SubwayModel> list) = _Started;
}
