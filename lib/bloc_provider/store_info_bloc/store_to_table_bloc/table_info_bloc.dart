import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/data_with_code_model.dart';

part 'table_info_event.dart';
part 'table_info_bloc.freezed.dart';

class TableInfoBloc extends Bloc<TableInfoEvent, SubwayModelwithCode> {
  TableInfoBloc() : super(SubwayModelwithCode()) {
    on<TableInfoEvent>((event, emit) {
      emit(event.model);
    });
  }
}
