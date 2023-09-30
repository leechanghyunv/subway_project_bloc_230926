import '../../custom_widget/for_distance_provider.dart';
import '../../setting/exportA.dart';
import '../../setting/exportB.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

class DistanceCubit extends Cubit<SkTelecom_Model> {
  DistanceCubit() : super(const SkTelecom_Model());

  final dio = Dio();
  late int updown = 0;

  void callApiSubInfo(DistModel model) async {
    Noti.initialize(flutterLocalNotificationsPlugin);
    const url =  'http://apis.openapi.sk.com/transit/routes';

    final headers = {
      'accept': 'application/json',
      'appKey': 'ceevGND92fauEWQ8gfEnJ2i2gTlX1sxT2DBh3XRh',
      'content-type': 'application/json',
    };

    final body = jsonEncode({
      'startX': model.lngB, 'startY': model.latB,
      'endX': model.lngA, 'endY': model.latA,
      "lang": 0, "format": "json", "count": 20
    });

    try{
      final response = await dio.post(url, data: body, options: Options(headers: headers));
        final Map<String, dynamic> utf8String = response.data['metaData']['plan'];
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
          print('firstElement : $firstElement');
          var value1 = firstElement?.elementAt(0);
          var value2 = firstElement?.elementAt(1);
          print('value1 : $value1'); /// 첫 출발
          print('value2 : $value2'); /// 그 다음역
          int? intValue1 = int.tryParse(value1!);
          int? intValue2 = int.tryParse(value2!);
          if(intValue1 != null && intValue2 != null){
            updown = (intValue1-intValue2); /// 2가 크면 상행 1이 크면 하행
          }
          var subfare = subinfo.first.fare.regular.totalFare;
          var fare = subfare == 0 ? '0000' : subfare;
          noticeTime(model.nameA,model.nameB,formattedRoute,time);
         /// /// /// /// /// /// /// /// /// /// // /// /// /// /// /// /// /// /// /// /// /// //

          emit(SkTelecom_Model(
            subroute: formattedRoute, subroutelist: subroute,
            time: time, fare: fare, updown: updown,
          ));

      } else {
          var pathtype = utfIntoList.first.pathType.toString();
          var routename = utfIntoList.first.legs.map((e) => '${e.route}').where((e) => e != 'null').toSet().toList();
          var fare = utfIntoList.where((element) => element.pathType != 1).first.fare.regular.totalFare;
          var route = utfIntoList.first.legs.map((e) => '${e.end.name}').toSet().toList();
          String formattedRoute = route.join(' > ');
          String formattedpathtype = routename.join(' - ');
          var time = utfIntoList.first.totalTime; ///  시간순
          noticeTime(model.nameA,model.nameB,formattedRoute,time);

          getAnotherNotice(time,pathtype,formattedpathtype,formattedRoute);
           /// /// /// /// /// /// /// /// /// /// // /// /// /// /// /// /// /// /// /// /// /// //
          emit(SkTelecom_Model(
            route: formattedpathtype, routelist: formattedRoute,
            fare: fare, time: time,
          ));
        }
  }catch(e){
      throw(e.toString());
    }
  }

void noticeTime(String nameA, nameB,route, int time){
  getNoticeTime(nameA, nameB, route, time);
  Noti.scheduleNotification(
      title: "목적지에 곧 도착합니다.",
      body: "목적지인 $nameA(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
      scheduledNotificationDateTime: DateTime.now().
      add(Duration(minutes: time-120))).then((value) =>
      Noti.scheduleNotification(
          title: "목적지에 곧 도착합니다.",
          body: "목적지인 $nameA(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
          scheduledNotificationDateTime: DateTime.now().
          add(Duration(seconds: time-120))));
  Noti.scheduleNotification(
      title: "목적지에 곧 도착합니다.",
      body: "목적지인 $nameA(으)로 이동합니다. 내리실때 안전에 유의해 주시기 바랍니다.",
      scheduledNotificationDateTime: DateTime.now().
      add(Duration(seconds: time-120)));
}



}