import '../../setting/exportA.dart';

part 'sub_info_filter_event.dart';
part 'sub_info_filter_state.dart';
part 'sub_info_filter_bloc.freezed.dart';

class SubInfoFilterBloc extends Bloc<SubInfoFilterEvent, SubInfoFilterState> {
  SubInfoFilterBloc() : super(const SubInfoFilterState.initial()) {
    on<SubInfoFilterEvent>((event, emit) async {
      if(event is _FiltedList){
        try{
          final List<SubwayModel> filtedData = await searchSubway(name: event.name);
          emit(_Loaded(filtedData));
        }catch(e){
          emit(_Error(
              'Failed to fatch code data -> ${e}'));
        }
      } else if(event is _FiltedAfter){
        try{
          final List<SubwayModel> filtedData = await searchSubway(name: event.name,line: event.line);
          emit(_Loaded(filtedData));
        }catch(e){
          emit(_Error(
              'Failed to fatch code data -> ${e}'));
        }
      }
    });
  }
}

class SubInfoFilterBlocB extends Bloc<SubInfoFilterEvent, SubInfoFilterState> {
  SubInfoFilterBlocB() : super(const SubInfoFilterState.initial()) {
    on<SubInfoFilterEvent>((event, emit) async {
      if(event is _FiltedList){
        try{
          final List<SubwayModel> filtedData = await searchSubway(name: event.name);
          emit(_Loaded(filtedData));
        }catch(e){
          emit(_Error(
              'Failed to fatch code data -> ${e}'));
        }
      } else if(event is _FiltedAfter){
        try{
          final List<SubwayModel> filtedData = await searchSubway(name: event.name,line: event.line);
          emit(_Loaded(filtedData));
        }catch(e){
          emit(_Error(
              'Failed to fatch code data -> ${e}'));
        }
      }
    });
  }
}

Future<List<SubwayModel>> searchSubway({required name, String? line}) async {

  final InsideAssets insideAssets = InsideAssets();
  List<SubwayModel> model = await insideAssets.fetchInside();

  if(line != null){
    final List<SubwayModel> filtedState = model.where((e) => e.subname == name && e.line_ui == line).toList();
    return filtedState;
  } else {
    final List<SubwayModel> filtedState = model.where((e) => e.subname == name).toList();
    return filtedState;
  }
}