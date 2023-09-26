part of 'arrival_bloc.dart';

@freezed
class ArrivalState with _$ArrivalState {
  const factory ArrivalState.initial() = _Initial;
  const factory ArrivalState.loading() = _Loading;
  const factory ArrivalState.loaded(
      List<ArrivalModel> arrivalmodel,
      String up1, String down1,
      String up2, String down2
      ) = _Loaded;
  const factory ArrivalState.error(String msg) = _Error;
}
