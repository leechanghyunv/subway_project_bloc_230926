import '../setting/exportA.dart';

String switchLine(String line) =>
    switch(line){
      'Line1' => '1001', 'Line2' => '1002', 'Line3' => '1003',
      'Line4' => '1004', 'Line5' => '1005', 'Line6' => '1006',
      'Line7' => '1007', 'Line8' => '1008', 'Line9' => '1009',
      '경의선' => '1063', '경춘선' => '1067', '공항철도' => '1065',
      '수인분당' => '1075', '신분당' => '1077', '우이신설' => '1092',
      _ => '1004',
    };

String switchUiLine(String line) =>
    switch(line){
      'Line1' => '01호선', 'Line2' => '02호선', 'Line3' => '03호선',
      'Line4' => '04호선', 'Line5' => '05호선', 'Line6' => '06호선',
      'Line7' => '07호선', 'Line8' => '08호선', 'Line9' => '09호선',
      '경의선' => '경의선', '경춘선' => '경춘선', '공항철도' => '공항철도',
      '수인분당' => '수인분당', '신분당' => '신분당', '우이신설' => '우이신설',
      _ => '',
    };

const String textAmsg = '(열차번호)C0:진입\n(열차번호)C1:도착\n(열차번호)C2:출발\n(열차번호)C3:전역출발\n(열차번호)C4:전역진입\n(열차번호)C5:전역도착\n(열차번호)C99:운행중\n\nU: 상행, D: 하행';

const String textAmsg2 = '열차에서 내리는 방향\n급행열차(반대방향)';

const String msgB = '일반열차 : NOR(S)\n급행열차 : EXP(S)\nITX : ITX(T)';

const String sms1 = 'Send SMS를 누르시면 민원문자를 보내실 수 있습니다. 지하철 민원 신고시 통로문 또는 출입문 위 칸번호 4~6자리와 종착역을 기재하셔야 빠른 민원이 가능합니다.';
const String sms2 = '\n ex)오이도행 (열차번호)4764, 8-3번 추워요 에어컨 틀어주세요';

// Widget Time_Provider() => TimerBuilder.periodic(
//   const Duration(seconds: 1),
//   builder: (context) =>
//       TextFrame(
//           comment: '현재시간: ${formatDate(DateTime.now(),
//               [' ',am ,  ' ', hh, '시 ', nn, '분'])}'
//       ),
// );

final textAcommon = TextStyle(
  fontSize: Device.aspectRatio >= 0.5 ? 19.sp : 18.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final commonB = TextStyle(
  fontSize: Device.aspectRatio >= 0.5 ? 19.sp : 18.sp,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final dialogAB = TextStyle(
  fontSize: 3.5.w,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  overflow: TextOverflow.ellipsis,
);

final commonmin = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final tablecommon = TextStyle(
  fontSize: 2.8.w,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final commonTextStyle = TextStyle(
  fontSize: 3.7.w,
  fontWeight: FontWeight.bold,
);

tableexstyle(String express) => TextStyle(
    fontSize: 2.8.w,
    color: express == 'GENERAL' ? Colors.black : Colors.red,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis
);

textAstyleL(String side,String line) => TextStyle(
    color: side == 'LEFT' ? headingColor(line) : Colors.black,
    fontSize: Device.aspectRatio >= 0.5 ? 19.sp : 18.sp,
    fontWeight: FontWeight.bold
);

textAstyleR(String side,String line) => TextStyle(
    color: side == 'RIGHT' ? headingColor(line) : Colors.black,
    fontSize: Device.aspectRatio >= 0.5 ? 19.sp : 18.sp,
    fontWeight: FontWeight.bold
);

Widget SeoulWidget(String state) => Text(
    '$state',
    style: TextStyle(fontSize: 32.sp,
        fontWeight: FontWeight.bold));

engcommon(String eng) => TextStyle(
  fontSize: eng.length < 35 ? 15.sp : 14.sp,
  fontWeight: FontWeight.bold,
  overflow: TextOverflow.ellipsis,
);

commonStyle() => TextStyle(
  fontSize: 3.7.w,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
