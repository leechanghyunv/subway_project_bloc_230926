import '../../setting/exportA.dart';

class SubListCubit extends HydratedCubit<List<String>> {
  SubListCubit() : super([]);

  void addList(String name){
    final List<String> updatedList = List.from(state);
    if(updatedList.length <= 5){
      updatedList.add(name);
      emit(updatedList);
    } else {
      updatedList.removeAt(0);
      emit(updatedList);
    }
  }


  @override
  List<String>? fromJson(Map<String, dynamic> json) {
    final List<dynamic> list = json['subList'];
    return list.cast<String>();
  }

  @override
  Map<String, dynamic>? toJson(List<String> state) {
    return {'subList': state};
  }

}