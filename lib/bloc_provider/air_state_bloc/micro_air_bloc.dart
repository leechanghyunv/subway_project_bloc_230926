import 'package:subway_project_withbloc_230919/setting/exportA.dart';

part 'micro_air_event.dart';
part 'micro_air_state.dart';
part 'micro_air_bloc.freezed.dart';

class MicroAirBloc extends Bloc<MicroAirEvent, MicroAirState> {

  late SeoulApiService seoulApiService;

  MicroAirBloc() : super(const MicroAirState.initial()) {

    Dio dio = Dio();
    seoulApiService = SeoulApiService(dio);
    DustInfo? dustInfo;
    Color? colors;

    on<MicroAirEvent>((event, emit) async {
      emit(_Loading('Loading...'));
      try{
        final response = await seoulApiService.getDust();
        List<DustModel> dustmodel = response.airdata!.row!.toList();

        double? dustlevel = double.tryParse(dustmodel.map((e) => e.pm10).
        reduce((a, b) => a+b/dustmodel.length).toStringAsFixed(2));

        if(dustlevel != null){
          dustInfo = switch(dustlevel){
            < 20.0 => DustInfo(barLevel: 'Line4', commnet: '아주맑음'),
            < 50.0 => DustInfo(barLevel: 'Line2',commnet: '맑음'),
            < 100.0 => DustInfo(barLevel: 'Line3',commnet: '보통'),
            < 150.0 => DustInfo(barLevel: 'Line8',commnet: '나쁨'),
            _ => DustInfo(barLevel: 'Line8',commnet: '아주나쁨'),
          };
        }

        if(dustlevel != null){
          colors = switch(dustlevel){
            < 20.0 => Color(0xff028bb9), < 50.0 => Color(0xff027a31), < 100.0 => Color(0xffd75e02),
            < 150.0 => Color(0xfff62d37), _ => Color(0xfff62d37),
          };
        }
        print(dustInfo.toString());
        emit(_Loaded(dustmodel,dustlevel!, dustInfo!, colors!));

      }catch(e){
        emit(_Error('mirco_air_bloc ${e.toString()}'));
      }
    });
  }
}
