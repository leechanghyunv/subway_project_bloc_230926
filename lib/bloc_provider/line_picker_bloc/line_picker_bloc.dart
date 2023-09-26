import 'package:subway_project_withbloc_230919/setting/exportA.dart';

part 'line_picker_event.dart';
part 'line_picker_state.dart';
part 'line_picker_bloc.freezed.dart';

class LinePickerBloc extends Bloc<LinePickerEvent, LinePickerState> {

  late ArrivalApiService arrivalapi;

  LinePickerBloc() : super(const LinePickerState.initial()) {

  Dio dio = Dio();
  arrivalapi = ArrivalApiService(dio);

  var updnLine1 = ['상행', '내선'], updnLine2 = ['하행', '외선'];

    on<LinePickerEvent>((event, emit) async {
      try{
        emit(_Loading());
        final response = await arrivalapi.getArrival(event.name);
        final List<ArrivalModel>? arrival = response.arrival;
        if(arrival != null){
          List<ArrivalModel> up = arrival.where((e) => updnLine1.contains(e.updnLine)).toList();
          List<ArrivalModel> down = arrival.where((e) => updnLine2.contains(e.updnLine)).toList();
          emit(_Loaded(up, down));
        } else {
          emit(const _Error('LinePicker error'));
        }
      }catch(e){
        emit(_Error('LinePicker bloc: ${e.toString()}'));
      }
    });
  }
}

