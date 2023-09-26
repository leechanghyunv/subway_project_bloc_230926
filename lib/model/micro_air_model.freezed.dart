// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'micro_air_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAir _$SearchAirFromJson(Map<String, dynamic> json) {
  return _SearchAir.fromJson(json);
}

/// @nodoc
mixin _$SearchAir {
  @JsonKey(name: 'RealtimeCityAir')
  RealtimeCityAir? get airdata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAirCopyWith<SearchAir> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAirCopyWith<$Res> {
  factory $SearchAirCopyWith(SearchAir value, $Res Function(SearchAir) then) =
      _$SearchAirCopyWithImpl<$Res, SearchAir>;
  @useResult
  $Res call({@JsonKey(name: 'RealtimeCityAir') RealtimeCityAir? airdata});

  $RealtimeCityAirCopyWith<$Res>? get airdata;
}

/// @nodoc
class _$SearchAirCopyWithImpl<$Res, $Val extends SearchAir>
    implements $SearchAirCopyWith<$Res> {
  _$SearchAirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airdata = freezed,
  }) {
    return _then(_value.copyWith(
      airdata: freezed == airdata
          ? _value.airdata
          : airdata // ignore: cast_nullable_to_non_nullable
              as RealtimeCityAir?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RealtimeCityAirCopyWith<$Res>? get airdata {
    if (_value.airdata == null) {
      return null;
    }

    return $RealtimeCityAirCopyWith<$Res>(_value.airdata!, (value) {
      return _then(_value.copyWith(airdata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchAirCopyWith<$Res> implements $SearchAirCopyWith<$Res> {
  factory _$$_SearchAirCopyWith(
          _$_SearchAir value, $Res Function(_$_SearchAir) then) =
      __$$_SearchAirCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'RealtimeCityAir') RealtimeCityAir? airdata});

  @override
  $RealtimeCityAirCopyWith<$Res>? get airdata;
}

/// @nodoc
class __$$_SearchAirCopyWithImpl<$Res>
    extends _$SearchAirCopyWithImpl<$Res, _$_SearchAir>
    implements _$$_SearchAirCopyWith<$Res> {
  __$$_SearchAirCopyWithImpl(
      _$_SearchAir _value, $Res Function(_$_SearchAir) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airdata = freezed,
  }) {
    return _then(_$_SearchAir(
      airdata: freezed == airdata
          ? _value.airdata
          : airdata // ignore: cast_nullable_to_non_nullable
              as RealtimeCityAir?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAir implements _SearchAir {
  const _$_SearchAir({@JsonKey(name: 'RealtimeCityAir') this.airdata});

  factory _$_SearchAir.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAirFromJson(json);

  @override
  @JsonKey(name: 'RealtimeCityAir')
  final RealtimeCityAir? airdata;

  @override
  String toString() {
    return 'SearchAir(airdata: $airdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAir &&
            (identical(other.airdata, airdata) || other.airdata == airdata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, airdata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAirCopyWith<_$_SearchAir> get copyWith =>
      __$$_SearchAirCopyWithImpl<_$_SearchAir>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAirToJson(
      this,
    );
  }
}

abstract class _SearchAir implements SearchAir {
  const factory _SearchAir(
          {@JsonKey(name: 'RealtimeCityAir') final RealtimeCityAir? airdata}) =
      _$_SearchAir;

  factory _SearchAir.fromJson(Map<String, dynamic> json) =
      _$_SearchAir.fromJson;

  @override
  @JsonKey(name: 'RealtimeCityAir')
  RealtimeCityAir? get airdata;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAirCopyWith<_$_SearchAir> get copyWith =>
      throw _privateConstructorUsedError;
}

RealtimeCityAir _$RealtimeCityAirFromJson(Map<String, dynamic> json) {
  return _RealtimeCityAir.fromJson(json);
}

/// @nodoc
mixin _$RealtimeCityAir {
  List<DustModel>? get row => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealtimeCityAirCopyWith<RealtimeCityAir> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeCityAirCopyWith<$Res> {
  factory $RealtimeCityAirCopyWith(
          RealtimeCityAir value, $Res Function(RealtimeCityAir) then) =
      _$RealtimeCityAirCopyWithImpl<$Res, RealtimeCityAir>;
  @useResult
  $Res call({List<DustModel>? row});
}

/// @nodoc
class _$RealtimeCityAirCopyWithImpl<$Res, $Val extends RealtimeCityAir>
    implements $RealtimeCityAirCopyWith<$Res> {
  _$RealtimeCityAirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
  }) {
    return _then(_value.copyWith(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as List<DustModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RealtimeCityAirCopyWith<$Res>
    implements $RealtimeCityAirCopyWith<$Res> {
  factory _$$_RealtimeCityAirCopyWith(
          _$_RealtimeCityAir value, $Res Function(_$_RealtimeCityAir) then) =
      __$$_RealtimeCityAirCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DustModel>? row});
}

/// @nodoc
class __$$_RealtimeCityAirCopyWithImpl<$Res>
    extends _$RealtimeCityAirCopyWithImpl<$Res, _$_RealtimeCityAir>
    implements _$$_RealtimeCityAirCopyWith<$Res> {
  __$$_RealtimeCityAirCopyWithImpl(
      _$_RealtimeCityAir _value, $Res Function(_$_RealtimeCityAir) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
  }) {
    return _then(_$_RealtimeCityAir(
      row: freezed == row
          ? _value._row
          : row // ignore: cast_nullable_to_non_nullable
              as List<DustModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RealtimeCityAir implements _RealtimeCityAir {
  const _$_RealtimeCityAir({required final List<DustModel>? row}) : _row = row;

  factory _$_RealtimeCityAir.fromJson(Map<String, dynamic> json) =>
      _$$_RealtimeCityAirFromJson(json);

  final List<DustModel>? _row;
  @override
  List<DustModel>? get row {
    final value = _row;
    if (value == null) return null;
    if (_row is EqualUnmodifiableListView) return _row;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RealtimeCityAir(row: $row)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RealtimeCityAir &&
            const DeepCollectionEquality().equals(other._row, _row));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_row));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RealtimeCityAirCopyWith<_$_RealtimeCityAir> get copyWith =>
      __$$_RealtimeCityAirCopyWithImpl<_$_RealtimeCityAir>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RealtimeCityAirToJson(
      this,
    );
  }
}

abstract class _RealtimeCityAir implements RealtimeCityAir {
  const factory _RealtimeCityAir({required final List<DustModel>? row}) =
      _$_RealtimeCityAir;

  factory _RealtimeCityAir.fromJson(Map<String, dynamic> json) =
      _$_RealtimeCityAir.fromJson;

  @override
  List<DustModel>? get row;
  @override
  @JsonKey(ignore: true)
  _$$_RealtimeCityAirCopyWith<_$_RealtimeCityAir> get copyWith =>
      throw _privateConstructorUsedError;
}

DustModel _$DustModelFromJson(Map<String, dynamic> json) {
  return _DustModel.fromJson(json);
}

/// @nodoc
mixin _$DustModel {
  @JsonKey(name: 'PM10')
  double get pm10 => throw _privateConstructorUsedError;
  @JsonKey(name: 'PM25')
  double get pm25 => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDEX_NM')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'MSRSTE_NM')
  String get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DustModelCopyWith<DustModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DustModelCopyWith<$Res> {
  factory $DustModelCopyWith(DustModel value, $Res Function(DustModel) then) =
      _$DustModelCopyWithImpl<$Res, DustModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PM10') double pm10,
      @JsonKey(name: 'PM25') double pm25,
      @JsonKey(name: 'IDEX_NM') String result,
      @JsonKey(name: 'MSRSTE_NM') String region});
}

/// @nodoc
class _$DustModelCopyWithImpl<$Res, $Val extends DustModel>
    implements $DustModelCopyWith<$Res> {
  _$DustModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pm10 = null,
    Object? pm25 = null,
    Object? result = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      pm25: null == pm25
          ? _value.pm25
          : pm25 // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DustModelCopyWith<$Res> implements $DustModelCopyWith<$Res> {
  factory _$$_DustModelCopyWith(
          _$_DustModel value, $Res Function(_$_DustModel) then) =
      __$$_DustModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PM10') double pm10,
      @JsonKey(name: 'PM25') double pm25,
      @JsonKey(name: 'IDEX_NM') String result,
      @JsonKey(name: 'MSRSTE_NM') String region});
}

/// @nodoc
class __$$_DustModelCopyWithImpl<$Res>
    extends _$DustModelCopyWithImpl<$Res, _$_DustModel>
    implements _$$_DustModelCopyWith<$Res> {
  __$$_DustModelCopyWithImpl(
      _$_DustModel _value, $Res Function(_$_DustModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pm10 = null,
    Object? pm25 = null,
    Object? result = null,
    Object? region = null,
  }) {
    return _then(_$_DustModel(
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      pm25: null == pm25
          ? _value.pm25
          : pm25 // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DustModel implements _DustModel {
  const _$_DustModel(
      {@JsonKey(name: 'PM10') this.pm10 = 0.0,
      @JsonKey(name: 'PM25') this.pm25 = 0.0,
      @JsonKey(name: 'IDEX_NM') this.result = "정보없음",
      @JsonKey(name: 'MSRSTE_NM') this.region = "정보없음"});

  factory _$_DustModel.fromJson(Map<String, dynamic> json) =>
      _$$_DustModelFromJson(json);

  @override
  @JsonKey(name: 'PM10')
  final double pm10;
  @override
  @JsonKey(name: 'PM25')
  final double pm25;
  @override
  @JsonKey(name: 'IDEX_NM')
  final String result;
  @override
  @JsonKey(name: 'MSRSTE_NM')
  final String region;

  @override
  String toString() {
    return 'DustModel(pm10: $pm10, pm25: $pm25, result: $result, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DustModel &&
            (identical(other.pm10, pm10) || other.pm10 == pm10) &&
            (identical(other.pm25, pm25) || other.pm25 == pm25) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pm10, pm25, result, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DustModelCopyWith<_$_DustModel> get copyWith =>
      __$$_DustModelCopyWithImpl<_$_DustModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DustModelToJson(
      this,
    );
  }
}

abstract class _DustModel implements DustModel {
  const factory _DustModel(
      {@JsonKey(name: 'PM10') final double pm10,
      @JsonKey(name: 'PM25') final double pm25,
      @JsonKey(name: 'IDEX_NM') final String result,
      @JsonKey(name: 'MSRSTE_NM') final String region}) = _$_DustModel;

  factory _DustModel.fromJson(Map<String, dynamic> json) =
      _$_DustModel.fromJson;

  @override
  @JsonKey(name: 'PM10')
  double get pm10;
  @override
  @JsonKey(name: 'PM25')
  double get pm25;
  @override
  @JsonKey(name: 'IDEX_NM')
  String get result;
  @override
  @JsonKey(name: 'MSRSTE_NM')
  String get region;
  @override
  @JsonKey(ignore: true)
  _$$_DustModelCopyWith<_$_DustModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DustInfo {
  String get barLevel => throw _privateConstructorUsedError;
  String get commnet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DustInfoCopyWith<DustInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DustInfoCopyWith<$Res> {
  factory $DustInfoCopyWith(DustInfo value, $Res Function(DustInfo) then) =
      _$DustInfoCopyWithImpl<$Res, DustInfo>;
  @useResult
  $Res call({String barLevel, String commnet});
}

/// @nodoc
class _$DustInfoCopyWithImpl<$Res, $Val extends DustInfo>
    implements $DustInfoCopyWith<$Res> {
  _$DustInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barLevel = null,
    Object? commnet = null,
  }) {
    return _then(_value.copyWith(
      barLevel: null == barLevel
          ? _value.barLevel
          : barLevel // ignore: cast_nullable_to_non_nullable
              as String,
      commnet: null == commnet
          ? _value.commnet
          : commnet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DustInfoCopyWith<$Res> implements $DustInfoCopyWith<$Res> {
  factory _$$_DustInfoCopyWith(
          _$_DustInfo value, $Res Function(_$_DustInfo) then) =
      __$$_DustInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String barLevel, String commnet});
}

/// @nodoc
class __$$_DustInfoCopyWithImpl<$Res>
    extends _$DustInfoCopyWithImpl<$Res, _$_DustInfo>
    implements _$$_DustInfoCopyWith<$Res> {
  __$$_DustInfoCopyWithImpl(
      _$_DustInfo _value, $Res Function(_$_DustInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barLevel = null,
    Object? commnet = null,
  }) {
    return _then(_$_DustInfo(
      barLevel: null == barLevel
          ? _value.barLevel
          : barLevel // ignore: cast_nullable_to_non_nullable
              as String,
      commnet: null == commnet
          ? _value.commnet
          : commnet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DustInfo implements _DustInfo {
  const _$_DustInfo({this.barLevel = 'Line00', this.commnet = '정보없음'});

  @override
  @JsonKey()
  final String barLevel;
  @override
  @JsonKey()
  final String commnet;

  @override
  String toString() {
    return 'DustInfo(barLevel: $barLevel, commnet: $commnet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DustInfo &&
            (identical(other.barLevel, barLevel) ||
                other.barLevel == barLevel) &&
            (identical(other.commnet, commnet) || other.commnet == commnet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barLevel, commnet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DustInfoCopyWith<_$_DustInfo> get copyWith =>
      __$$_DustInfoCopyWithImpl<_$_DustInfo>(this, _$identity);
}

abstract class _DustInfo implements DustInfo {
  const factory _DustInfo({final String barLevel, final String commnet}) =
      _$_DustInfo;

  @override
  String get barLevel;
  @override
  String get commnet;
  @override
  @JsonKey(ignore: true)
  _$$_DustInfoCopyWith<_$_DustInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
