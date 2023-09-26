import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:subway_project_withbloc_230919/bloc_provider/sub_repository_bloc/repository.dart';

import '../../model/data_model.dart';
import '../../setting/geolocator.dart';

part 'latlng_event.dart';
part 'latlng_state.dart';
part 'latlng_bloc.freezed.dart';

class LatlngBloc extends Bloc<LatlngEvent, LatlngState> {

  MyLocation myLocation = MyLocation();
  InsideAssets insideAssets = InsideAssets();
  final Distance _distance =  Distance();

  LatlngBloc() : super(const LatlngState.initial()) {

    on<LatlngEvent>((event, emit) async {
      myLocation.getlatlng();
      insideAssets.fetchInside();

      List<SubwayModel> data = await insideAssets.fetchInside();

      for(var i = 0; i<data.length; i++){
        final km = _distance.as(
            LengthUnit.Meter,
            LatLng(myLocation.lat, myLocation.lng),
            LatLng(data[i].lat, data[i].lng));
        data[i] = data[i].setKm(km);
      }
      data.sort((a,b) => a.km!.compareTo(b.km!));
      List<SubwayModel> result = data.where((e) => e.line_ui.contains(event.line)).toList();
      emit(_Loaded(result));
    });



  }
}
