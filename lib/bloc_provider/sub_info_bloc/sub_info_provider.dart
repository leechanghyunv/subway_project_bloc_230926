import 'package:bloc/bloc.dart';
import 'package:subway_project_withbloc_230919/model/sub_detail_data_model.dart';

class SubwayDetaInfo extends Cubit<SubDetailModel> {
  SubwayDetaInfo() : super(SubDetailModel());

  void getInfo(SubDetailModel model) {
    print('SubwayDetaInfo: $model');
    emit(model);
  }

}