part of 'transfer_bloc.dart';

@freezed
class TransferEvent with _$TransferEvent {
  const factory TransferEvent.switchA(
      List<SubwayModelwithCode> stateA,
      List<SubwayModelwithCode> stateB,
      ) = _SwitchA;
  const factory TransferEvent.switchB(
      List<SubwayModelwithCode> stateB,
      List<SubwayModelwithCode> stateA,
      ) = _SwitchB;
}
