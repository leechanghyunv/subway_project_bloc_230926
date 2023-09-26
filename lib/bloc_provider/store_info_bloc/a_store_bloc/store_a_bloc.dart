import 'package:subway_project_withbloc_230919/setting/exportA.dart';

part 'store_a_event.dart';
part 'store_a_bloc.freezed.dart';

class StoreABloc extends Bloc<StoreAEvent, List<SubwayModelwithCode>> with HydratedMixin{

  StoreABloc() : super([]) {

    on<StoreAEvent>((event, emit) async {

      var sublist = await event.list.first;

      try{
        List<SubwayModelwithCode> listModel = [];
        listModel.add(
          SubwayModelwithCode(
              subname: sublist.subname.toString(), engname: sublist.engname.toString(),
              lat: sublist.lat, lng: sublist.lng, line_ui: sublist.line_ui.toString(),
              subwayid: sublist.subwayid, line: sublist.line.toString(),
              heading: sublist.heading.toString(), code: event.code),
        );
        emit(listModel);
      }catch(e){
        throw('StoreABloc ${e.toString()}');
      }

    });
  }

  @override
  List<SubwayModelwithCode>? fromJson(Map<String, dynamic> json) {
    List<SubwayModelwithCode> workouts = [];
    json['retrieveA'].forEach((e){
      return workouts.add(SubwayModelwithCode.fromJson(e));
    });
    return workouts;
  }

  @override
  Map<String, dynamic>? toJson(List<SubwayModelwithCode> state) {
    if(state is List<SubwayModelwithCode>){
      var json = {'retrieveA' : []};
      for(var workout in state){
        json['retrieveA']!.add(workout.toJson());
      }
      return json;
    } else {
      print('.....null json');
    }

  }
}
