import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';


import '../../api_repository/retrofit_repo.dart';
import '../../model/arrival_model.dart';

part 'arrival_event.dart';
part 'arrival_state.dart';
part 'arrival_bloc.freezed.dart';

class ArrivalBloc extends Bloc<ArrivalEvent, ArrivalState> {

  late ArrivalApiService arrivalapi;

  ArrivalBloc() : super(const ArrivalState.initial()) {

    var updnLine1 = ['상행', '내선'], updnLine2 = ['하행', '외선'];

    Dio dio = Dio();
    arrivalapi = ArrivalApiService(dio);

    on<ArrivalEvent>((event, emit) async {
      try{
        emit(_Loading());
        final response = await arrivalapi.getArrival(event.name);
        final List<ArrivalModel>? arrival = response.arrival;

          var filtedArrival = arrival
              !.where((element) => element.subwayId == event.line).toList();

          var updn1First = filtedArrival
              .where((e) => updnLine1.contains(e.updnLine))
              .map((e) => '${e.trainLineNm} ${e.arvlMsg2}').first;

          var updn1Last = filtedArrival
              .where((e) => updnLine1.contains(e.updnLine))
              .map((e) => '${e.trainLineNm} ${e.arvlMsg2}').last;

          var updn2First = filtedArrival
              .where((e) => updnLine2.contains(e.updnLine))
              .map((e) => '${e.trainLineNm} ${e.arvlMsg2}').first;

          var updn2Last = filtedArrival
              .where((e) => updnLine2.contains(e.updnLine))
              .map((e) => '${e.trainLineNm} ${e.arvlMsg2}').last;

          emit(_Loaded(arrival,updn1First,updn1Last,updn2First,updn2Last));
      }catch(e){
        emit(_Error('Failed to fatch data -> ${e}'));
      }
    },

    );
  }
  @override
  void onChange(Change<ArrivalState> change){
    super.onChange(change);
  }

  @override
  void onTransition(Transition<ArrivalEvent,ArrivalState> transition){
    super.onTransition(transition);

  }
}
