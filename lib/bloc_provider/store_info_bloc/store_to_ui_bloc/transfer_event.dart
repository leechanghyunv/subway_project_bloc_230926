part of 'transfer_bloc.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.started(
      List<SubwayModelwithCode> stateA,
      List<SubwayModelwithCode> stateB,
      ) = _Started;
}
