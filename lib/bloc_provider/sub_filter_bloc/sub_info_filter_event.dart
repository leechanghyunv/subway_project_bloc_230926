part of 'sub_info_filter_bloc.dart';

@freezed
class SubInfoFilterEvent with _$SubInfoFilterEvent {
  const factory SubInfoFilterEvent.filtedList(String name) = _FiltedList;
  const factory SubInfoFilterEvent.filtedAfter(String name,String line) = _FiltedAfter;
}
