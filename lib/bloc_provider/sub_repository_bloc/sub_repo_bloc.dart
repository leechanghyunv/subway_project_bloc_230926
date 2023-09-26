import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subway_project_withbloc_230919/bloc_provider/sub_repository_bloc/repository.dart';

import '../../model/data_model.dart';

part 'sub_repo_event.dart';
part 'sub_repo_state.dart';
part 'sub_repo_bloc.freezed.dart';

class SubRepoBloc extends Bloc<SubRepoEvent, SubRepoState> {
  SubRepoBloc() : super(const SubRepoState.initial()) {
    on<SubRepoEvent>((event, emit) async {
      try{
        final InsideAssets insideAssets = InsideAssets();
        List<SubwayModel> data = await insideAssets.fetchInside();
        emit(_Loaded(data));
      }catch(e){
        emit(_Error('SubRepoBloc: ${e.toString()}'));
      }
    });
  }
  @override
  void onChange(Change<SubRepoState> change) {
    super.onChange(change);
  }

  @override
  void onTransition(Transition<SubRepoEvent,SubRepoState> transition){
    super.onTransition(transition);

  }
}
