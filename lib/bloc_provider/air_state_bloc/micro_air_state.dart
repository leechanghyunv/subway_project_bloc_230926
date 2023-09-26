part of 'micro_air_bloc.dart';

@freezed
class MicroAirState with _$MicroAirState {
  const factory MicroAirState.initial() = _Initial;
  const factory MicroAirState.loading(String msg) = _Loading;
  const factory MicroAirState.loaded(
      List<DustModel> dustmodel, double level,
      DustInfo dustInfo, Color color) = _Loaded;
  const factory MicroAirState.err(String msg) = _Error;
}
