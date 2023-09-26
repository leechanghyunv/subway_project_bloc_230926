part of 'transfer_bloc.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState.initial() = _Initial;
  const factory TransferState.loading() = _Loading;
  const factory TransferState.loadedA(
      List<SubwayModelwithCode> stateA,
      List<SubwayModelwithCode> stateB) = _LoadedA;
  const factory TransferState.loadedB(
      List<SubwayModelwithCode> stateA,
      List<SubwayModelwithCode> stateB) = _LoadedB;
  const factory TransferState.error(String msg) = _Error;
}
