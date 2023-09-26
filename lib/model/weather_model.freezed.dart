// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchWeather _$SearchWeatherFromJson(Map<String, dynamic> json) {
  return _SearchWeather.fromJson(json);
}

/// @nodoc
mixin _$SearchWeather {
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchWeatherCopyWith<SearchWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherCopyWith<$Res> {
  factory $SearchWeatherCopyWith(
          SearchWeather value, $Res Function(SearchWeather) then) =
      _$SearchWeatherCopyWithImpl<$Res, SearchWeather>;
  @useResult
  $Res call({Main main, List<Weather> weather});

  $MainCopyWith<$Res> get main;
}

/// @nodoc
class _$SearchWeatherCopyWithImpl<$Res, $Val extends SearchWeather>
    implements $SearchWeatherCopyWith<$Res> {
  _$SearchWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchWeatherCopyWith<$Res>
    implements $SearchWeatherCopyWith<$Res> {
  factory _$$_SearchWeatherCopyWith(
          _$_SearchWeather value, $Res Function(_$_SearchWeather) then) =
      __$$_SearchWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Main main, List<Weather> weather});

  @override
  $MainCopyWith<$Res> get main;
}

/// @nodoc
class __$$_SearchWeatherCopyWithImpl<$Res>
    extends _$SearchWeatherCopyWithImpl<$Res, _$_SearchWeather>
    implements _$$_SearchWeatherCopyWith<$Res> {
  __$$_SearchWeatherCopyWithImpl(
      _$_SearchWeather _value, $Res Function(_$_SearchWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_$_SearchWeather(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchWeather implements _SearchWeather {
  const _$_SearchWeather(
      {required this.main, required final List<Weather> weather})
      : _weather = weather;

  factory _$_SearchWeather.fromJson(Map<String, dynamic> json) =>
      _$$_SearchWeatherFromJson(json);

  @override
  final Main main;
  final List<Weather> _weather;
  @override
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'SearchWeather(main: $main, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWeather &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, main, const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchWeatherCopyWith<_$_SearchWeather> get copyWith =>
      __$$_SearchWeatherCopyWithImpl<_$_SearchWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchWeatherToJson(
      this,
    );
  }
}

abstract class _SearchWeather implements SearchWeather {
  const factory _SearchWeather(
      {required final Main main,
      required final List<Weather> weather}) = _$_SearchWeather;

  factory _SearchWeather.fromJson(Map<String, dynamic> json) =
      _$_SearchWeather.fromJson;

  @override
  Main get main;
  @override
  List<Weather> get weather;
  @override
  @JsonKey(ignore: true)
  _$$_SearchWeatherCopyWith<_$_SearchWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;

  /// 체감온도
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$_MainCopyWith(_$_Main value, $Res Function(_$_Main) then) =
      __$$_MainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class __$$_MainCopyWithImpl<$Res> extends _$MainCopyWithImpl<$Res, _$_Main>
    implements _$$_MainCopyWith<$Res> {
  __$$_MainCopyWithImpl(_$_Main _value, $Res Function(_$_Main) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_$_Main(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Main implements _Main {
  const _$_Main(
      {this.temp = 0.0,
      @JsonKey(name: 'feels_like') this.feelsLike = 0.0,
      @JsonKey(name: 'temp_min') this.tempMin = 0.0,
      @JsonKey(name: 'temp_max') this.tempMax = 0.0});

  factory _$_Main.fromJson(Map<String, dynamic> json) => _$$_MainFromJson(json);

  @override
  @JsonKey()
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;

  /// 체감온도
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @override
  String toString() {
    return 'Main(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Main &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temp, feelsLike, tempMin, tempMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainCopyWith<_$_Main> get copyWith =>
      __$$_MainCopyWithImpl<_$_Main>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
      {final double temp,
      @JsonKey(name: 'feels_like') final double feelsLike,
      @JsonKey(name: 'temp_min') final double tempMin,
      @JsonKey(name: 'temp_max') final double tempMax}) = _$_Main;

  factory _Main.fromJson(Map<String, dynamic> json) = _$_Main.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override

  /// 체감온도
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  @JsonKey(ignore: true)
  _$$_MainCopyWith<_$_Main> get copyWith => throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_Weather(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {this.id = 0,
      this.main = "정보없음",
      this.description = "정보없음",
      this.icon = "정보없음"});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String main;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {final int id,
      final String main,
      final String description,
      final String icon}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int get id;
  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
