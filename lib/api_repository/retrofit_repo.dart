import 'package:subway_project_withbloc_230919/setting/exportA.dart';
import 'package:subway_project_withbloc_230919/setting/exportB.dart';

part 'retrofit_repo.g.dart';

const String key = '4c6f72784b6272613735677166456d';
const String weatherKey = '391af738f3d6aea930da389c0e6041ff';

const String baseUrl = 'http://openapi.seoul.go.kr:8088/$key/json';
const String arrivalUrl = 'http://swopenapi.seoul.go.kr/api/subway/$key/json';
const String weatherUrl = 'https://api.openweathermap.org/data/2.5';
const String skdataUrl = 'http://apis.openapi.sk.com/transit/routes';
@RestApi(baseUrl : baseUrl)
abstract class SeoulApiService{
  factory SeoulApiService(Dio dio, {String baseUrl}) = _SeoulApiService;
  /// 지하철 테이블 데이터
  @GET('/SearchSTNTimeTableByIDService/1/500/{code}/{week}/{updown}')
  Future<SearchResult> getTimeTable(
      @Path() String? code,
      @Path() String? week,
      @Path() String? updown,
      );

  /// 지하철 코드 데이터
  @GET('/SearchInfoBySubwayNameService/1/5/{name}')
  Future<SearchCode> getCode(@Path() String? name);
  /// 미세먼지 데이터
  @GET('/RealtimeCityAir/1/25')
  Future<SearchAir> getDust();
}

@RestApi(baseUrl : arrivalUrl)
abstract class ArrivalApiService{
  factory ArrivalApiService(Dio dio, {String baseUrl}) = _ArrivalApiService;
  /// 실시간 열차 도착 데이터
  @GET('/realtimeStationArrival/0/16/{subname}')
  Future<SearchArrival> getArrival(@Path() String? subname);
}

@RestApi(baseUrl : weatherUrl)
abstract class WeatherApiService{
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;
  /// openweather 날씨 데이터
  @GET('/weather?')
  Future<SearchWeather> getWeather(
      @Query("lat") String lat,
      @Query("lon") String lon,
      @Query("appid") String appid,
      );
}



