part of 'scadule_bloc.dart';

@freezed
class ScaduleState with _$ScaduleState {
  const factory ScaduleState.initial() = _Initial;
  const factory ScaduleState.loading() = _Loading;
  const factory ScaduleState.loaded(List<TableModel> tableA,List<TableModel> tableB) = _Loaded;
  const factory ScaduleState.error(String msg) = _Error;
}
