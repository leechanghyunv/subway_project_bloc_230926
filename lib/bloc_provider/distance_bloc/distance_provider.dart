import 'package:get/get.dart';
import '../../setting/exportA.dart';
import '../../setting/exportB.dart';


final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

class DistanceCubit extends Cubit<SkTelecom_Model> {
  DistanceCubit() : super(const SkTelecom_Model());

  final dio = Dio();
  int updown = 0;

  void callApiSubInfo(DistModel model) async {
    Noti.initialize(flutterLocalNotificationsPlugin);
    const url =  'http://apis.openapi.sk.com/transit/routes';
    final headers = {
      'accept': 'application/json',
      'appKey': 'ceevGND92fauEWQ8gfEnJ2i2gTlX1sxT2DBh3XRh',
      'content-type': 'application/json',
    };
    final body = jsonEncode({
      'startX': '${model.lngB}',
      'startY': '${model.latB}',
      'endX': '${model.lngA}',
      'endY': '${model.latA}',
      "lang": 0,
      "format": "json",
      "count": 10
    });
    try{
      final response = await dio.post(url, data: body, options: Options(headers: headers));
      if(response.statusCode == 200){
        final Map<String, dynamic> utf8String = jsonDecode(Utf8Decoder().convert(response.data))['metaData']['plan'];
        List<Itinerary> utfIntoList = utf8String['itineraries'].map<Itinerary>((e) => Itinerary.fromJson(e)).toList();
        utfIntoList.sort((a,b)=> a.totalTime.compareTo(b.totalTime));

        if(utfIntoList.any((element) => element.pathType == 1)){

          var subinfo = utfIntoList.where((element) => element.pathType == 1);
          var route = subinfo.first.legs.map((e) => '${e.end.name}').toSet().toList();
          String formattedRoute = route.join(' > ');
          var time = subinfo.first.totalTime; /// 지하철기준 시간순
          var subroute = subinfo.first.legs.
          where((e) => e.route != null).map((e) => e.passStopList?.stationList.map((e) => e.stationName)).toList();
          var subId = subinfo.first.legs.where((e) => e.route != null).
          map((e) => e.passStopList?.stationList.map((e) => e.stationId));

          var firstElement = subId.elementAt(0);
          var value1 = firstElement?.elementAt(0);
          var value2 = firstElement?.elementAt(1);
          int? intValue1 = int.tryParse(value1!);
          int? intValue2 = int.tryParse(value2!);
          if(intValue1 != null && intValue2 != null){
            updown = (intValue1-intValue2);
          }
          var subfare = subinfo.first.fare.regular.totalFare;
          var fare = subfare == 0 ? subfare : '0000';
          noticeTime(model.nameA,model.nameB,formattedRoute,time);
        /// /// /// /// /// /// /// /// /// /// /// // /// /// /// /// /// /// /// /// /// /// /// //
          emit(SkTelecom_Model(
            subroute: formattedRoute, subroutelist: subroute,
            time: time, fare: fare, updown: updown,
          ));
      }

        var pathtype = utfIntoList.first.pathType.toString();
        var routename = utfIntoList.first.legs.map((e) => '${e.route}').where((e) => e != 'null').toSet().toList();
        var fare = utfIntoList.where((element) => element.pathType != 1).first.fare.regular.totalFare;
        var route = utfIntoList.first.legs.map((e) => '${e.end.name}').toSet().toList();
        String formattedRoute = route.join(' > ');
        String formattedpathtype = routename.join(' - ');
        var time = utfIntoList.first.totalTime; ///  시간순
        noticeTime(model.nameA,model.nameB,formattedRoute,time);
        Get.snackbar(
          '지하철기준 빠른 경로가 없습니다.',
          '빠른경로 ${pathtype == '2' ? '(버스)' : pathtype == '3' ? '(버스-지하철)' : '---'} : ${formattedpathtype}\n${formattedRoute}\n${(time/60).toStringAsFixed(0)}분 소요',
          backgroundColor: Colors.grey[100],
          shouldIconPulse: true,
          duration: Duration(seconds: 7),
        );
        /// /// /// /// /// /// /// /// /// /// /// // /// /// /// /// /// /// /// /// /// /// /// //
        emit(SkTelecom_Model(
          route: formattedpathtype, routelist: formattedRoute,
          fare: fare, time: time,
        ));

    }
      throw('distance_calculate: ${response.statusCode}');
  }catch(e){
      throw(e.toString());
    }
  }

void noticeTime(String nameA, nameB,route, int time){
  print('start scheduleNotification');
  Get.snackbar(
    '$nameB -> $nameA (${(time/60).toStringAsFixed(0)}분 소요)',
    '도착 시간 2분전에 알람을 울립니다.\n\n이동경로 : ${route}',
    backgroundColor: Colors.grey[100],
    icon: Icon(Icons.subway),
    shouldIconPulse: true,
    duration: Duration(seconds: 7),
  );
  Noti.scheduleNotification(
      title: "목적지에 곧 도착합니다.",
      body: "목적지인 ${nameA}(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
      scheduledNotificationDateTime: DateTime.now().
      add(Duration(minutes: time-120))).then((value) =>
      Noti.scheduleNotification(
          title: "목적지에 곧 도착합니다.",
          body: "목적지인 ${nameA}(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
          scheduledNotificationDateTime: DateTime.now().
          add(Duration(seconds: time-120))));
  Noti.scheduleNotification(
      title: "목적지에 곧 도착합니다.",
      body: "목적지인 ${nameA}(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
      scheduledNotificationDateTime: DateTime.now().
      add(Duration(seconds: time-120)));
}



}