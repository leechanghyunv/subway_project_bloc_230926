part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading(String msg) = _Loading;
  const factory WeatherState.loaded(
      List<Weather> weather, Main main, Widget image) = _Loaded;
  const factory WeatherState.err(String msg) = _Error;
}
