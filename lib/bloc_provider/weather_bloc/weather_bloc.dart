import '../../setting/apikey.dart';
import '../../setting/exportA.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  late MyLocation myLocation = MyLocation();
  late WeatherApiService weatherapi;

  WeatherBloc() : super(const WeatherState.initial()) {

    Dio dio = Dio();
    weatherapi = WeatherApiService(dio);

    on<WeatherEvent>((event, emit) async {
      myLocation.getlatlng();
      emit(_Loading('Loading...'));
      try{
        final response = await weatherapi.getWeather(
            myLocation.lng.toString(), myLocation.lng.toString(), weatherKey);
        Main main = response.main;
        List<Weather> seoulWeather = response.weather;
        int condition = seoulWeather.elementAt(0).id;

        Widget icon = switch(condition){
          < 300 => SvgPicture.asset('svg/climacon-colud_lightning.svg',
              height: 35),
          < 600 => SvgPicture.asset('svg/climacon-cloud_rain.svg',
              height: 35),
          == 800 => SvgPicture.asset('svg/climacon-sun.svg',
            height: 35,),
          <= 804 => SvgPicture.asset('svg/climacon-cloud_sun.svg',
            height: 35,),
          _ => throw Exception('Failed to load user data'),
        };
        emit(_Loaded(seoulWeather, main, icon));
      }catch(e){
        emit(_Error('weather_bloc ${e.toString()}'));
      }
    });
  }
}
