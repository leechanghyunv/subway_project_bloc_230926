import 'package:subway_project_withbloc_230919/setting/exportA.dart';
import 'package:dio/dio.dart';
part 'code_event.dart';
part 'code_state.dart';
part 'code_bloc.freezed.dart';

class CodeBloc extends Bloc<CodeEvent, CodeState> {

  late SeoulApiService seoulapi;

  CodeBloc() : super(const CodeState.initial()) {

  Dio dio = Dio();
  seoulapi = SeoulApiService(dio);
    on<CodeEvent>((event, emit) async {
      String codename  = event.name;
      final nameWithoutParentheses = codename.replaceAll(RegExp(r'\([^()]*\)'), '');
      try{
        emit(_Loading());
        final response = await seoulapi.getCode(nameWithoutParentheses);
        List<CodeModel> codeList = response.codedata!.row;
        String lineNum = switch(event.line){
          'Line1' => '01호선', 'Line2' => '02호선', 'Line3' => '03호선', 'Line4' => '04호선',
          'Line5' => '05호선', 'Line6' => '06호선', 'Line7' => '07호선', 'Line8' => '08호선',
          'Line9' => '09호선', '신분당' => '신분당선', '수인분당' => '수인분당선', '경의선' => '경의선',
          '경춘선' => '경춘선', '공항철도' => '공항철도', '우이신설'=> '우이신설선', _ => '',
        };
        final index = codeList.indexWhere((e) => e.line == lineNum);
        final code = codeList[index].stationCd;
        print('code: $code');
        emit(_Loaded(code));
      }catch(e){
        emit(_Error('Failed to fatch code data -> ${e}'));
      }

    });
  }
}


