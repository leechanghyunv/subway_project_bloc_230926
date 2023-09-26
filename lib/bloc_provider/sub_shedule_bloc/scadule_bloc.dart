import 'package:subway_project_withbloc_230919/setting/exportA.dart';
import 'package:subway_project_withbloc_230919/setting/exportB.dart';

part 'scadule_event.dart';
part 'scadule_state.dart';
part 'scadule_bloc.freezed.dart';

class ScaduleBloc extends Bloc<ScaduleEvent, ScaduleState> {

  late SeoulApiService seoulapi;

  ScaduleBloc() : super(const ScaduleState.initial()) {

    Dio dio = Dio();
    seoulapi = SeoulApiService(dio);

    final String ee = DateFormat('EEE').format(DateTime.now());
    String output;
    output = switch(ee) {"Sat" => '2', "Sun" => '2', _ => '1'};
    on<ScaduleEvent>((event, emit) async {
      try{
        emit(_Loading());
        final responseA = await seoulapi.getTimeTable(event.code, output, '1');
        final responseB = await seoulapi.getTimeTable(event.code, output, '2');
          List<TableModel> tableA = responseA.timetable!.row!.toList();
          List<TableModel> tableB = responseB.timetable!.row!.toList();
          emit(_Loaded(tableA, tableB));

      }catch(e){
        emit(_Error('schedule bloc ${e.toString()}'));
      }
    });
  }
}
