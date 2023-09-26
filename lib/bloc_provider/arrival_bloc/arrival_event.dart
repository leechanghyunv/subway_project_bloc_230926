part of 'arrival_bloc.dart';

@freezed
class ArrivalEvent with _$ArrivalEvent {
  const factory ArrivalEvent.ArrivalList(String name,String line) = _ArrivalList;
}
