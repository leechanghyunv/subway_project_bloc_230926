part of 'table_info_bloc.dart';

@freezed
class TableInfoEvent with _$TableInfoEvent {
  const factory TableInfoEvent.started(SubwayModelwithCode model) = _Started;
}
