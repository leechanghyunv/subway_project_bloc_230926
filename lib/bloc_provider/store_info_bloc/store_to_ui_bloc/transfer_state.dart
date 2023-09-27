part of 'transfer_bloc.dart';

@freezed
class TransferState with _$TransferState {
  const factory TransferState.initial() = _Initial;
  const factory TransferState.loading() = _Loading;
  const factory TransferState.loaded(
      List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB) = _Loaded;
  const factory TransferState.error(String msg) = _Error;
}
