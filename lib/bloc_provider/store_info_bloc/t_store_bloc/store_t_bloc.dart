import '../../../setting/exportA.dart';

part 'store_t_event.dart';
part 'store_t_bloc.freezed.dart';

class StoreTBloc extends Bloc<StoreTEvent, List<SubwayModelwithCode>> with HydratedMixin{
  StoreTBloc() : super([]) {

    on<StoreTEvent>((event, emit) async {

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
    json['retrieveT'].forEach((e){
      return workouts.add(SubwayModelwithCode.fromJson(e));
    });
    return workouts;
  }

  @override
  Map<String, dynamic>? toJson(List<SubwayModelwithCode> state) {
    if(state is List<SubwayModelwithCode>){
      var json = {'retrieveT' : []};
      for(var workout in state){
        json['retrieveT']!.add(workout.toJson());
      }
      return json;
    } else {
      print('.....null json');
    }

  }
}
