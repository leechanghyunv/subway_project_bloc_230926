import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/data_with_code_model.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';
part 'transfer_bloc.freezed.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  TransferBloc() : super(const TransferState.initial()) {
    on<TransferEvent>((event, emit) async {
      if(state is _SwitchA){
        emit(_$_LoadedA(event.stateA, event.stateB));
      }else if(state is _SwitchB){
      }else{
        emit(_$_LoadedB(event.stateB, event.stateA));
      }
      emit(_Error('0001'));
    });
  }
}
