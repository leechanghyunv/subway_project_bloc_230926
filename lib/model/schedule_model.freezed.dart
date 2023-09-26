// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: 'SearchSTNTimeTableByIDService')
  SearchSTNTimeTableByIDService? get timetable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchSTNTimeTableByIDService')
      SearchSTNTimeTableByIDService? timetable});

  $SearchSTNTimeTableByIDServiceCopyWith<$Res>? get timetable;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timetable = freezed,
  }) {
    return _then(_value.copyWith(
      timetable: freezed == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as SearchSTNTimeTableByIDService?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchSTNTimeTableByIDServiceCopyWith<$Res>? get timetable {
    if (_value.timetable == null) {
      return null;
    }

    return $SearchSTNTimeTableByIDServiceCopyWith<$Res>(_value.timetable!,
        (value) {
      return _then(_value.copyWith(timetable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$_SearchResultCopyWith(
          _$_SearchResult value, $Res Function(_$_SearchResult) then) =
      __$$_SearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchSTNTimeTableByIDService')
      SearchSTNTimeTableByIDService? timetable});

  @override
  $SearchSTNTimeTableByIDServiceCopyWith<$Res>? get timetable;
}

/// @nodoc
class __$$_SearchResultCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$_SearchResult>
    implements _$$_SearchResultCopyWith<$Res> {
  __$$_SearchResultCopyWithImpl(
      _$_SearchResult _value, $Res Function(_$_SearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timetable = freezed,
  }) {
    return _then(_$_SearchResult(
      timetable: freezed == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as SearchSTNTimeTableByIDService?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResult implements _SearchResult {
  const _$_SearchResult(
      {@JsonKey(name: 'SearchSTNTimeTableByIDService') this.timetable});

  factory _$_SearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultFromJson(json);

  @override
  @JsonKey(name: 'SearchSTNTimeTableByIDService')
  final SearchSTNTimeTableByIDService? timetable;

  @override
  String toString() {
    return 'SearchResult(timetable: $timetable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResult &&
            (identical(other.timetable, timetable) ||
                other.timetable == timetable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timetable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      __$$_SearchResultCopyWithImpl<_$_SearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {@JsonKey(name: 'SearchSTNTimeTableByIDService')
      final SearchSTNTimeTableByIDService? timetable}) = _$_SearchResult;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$_SearchResult.fromJson;

  @override
  @JsonKey(name: 'SearchSTNTimeTableByIDService')
  SearchSTNTimeTableByIDService? get timetable;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchSTNTimeTableByIDService _$SearchSTNTimeTableByIDServiceFromJson(
    Map<String, dynamic> json) {
  return _SearchSTNTimeTableByIDService.fromJson(json);
}

/// @nodoc
mixin _$SearchSTNTimeTableByIDService {
  List<TableModel>? get row => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchSTNTimeTableByIDServiceCopyWith<SearchSTNTimeTableByIDService>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSTNTimeTableByIDServiceCopyWith<$Res> {
  factory $SearchSTNTimeTableByIDServiceCopyWith(
          SearchSTNTimeTableByIDService value,
          $Res Function(SearchSTNTimeTableByIDService) then) =
      _$SearchSTNTimeTableByIDServiceCopyWithImpl<$Res,
          SearchSTNTimeTableByIDService>;
  @useResult
  $Res call({List<TableModel>? row});
}

/// @nodoc
class _$SearchSTNTimeTableByIDServiceCopyWithImpl<$Res,
        $Val extends SearchSTNTimeTableByIDService>
    implements $SearchSTNTimeTableByIDServiceCopyWith<$Res> {
  _$SearchSTNTimeTableByIDServiceCopyWithImpl(this._value, this._then);

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
              as List<TableModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchSTNTimeTableByIDServiceCopyWith<$Res>
    implements $SearchSTNTimeTableByIDServiceCopyWith<$Res> {
  factory _$$_SearchSTNTimeTableByIDServiceCopyWith(
          _$_SearchSTNTimeTableByIDService value,
          $Res Function(_$_SearchSTNTimeTableByIDService) then) =
      __$$_SearchSTNTimeTableByIDServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TableModel>? row});
}

/// @nodoc
class __$$_SearchSTNTimeTableByIDServiceCopyWithImpl<$Res>
    extends _$SearchSTNTimeTableByIDServiceCopyWithImpl<$Res,
        _$_SearchSTNTimeTableByIDService>
    implements _$$_SearchSTNTimeTableByIDServiceCopyWith<$Res> {
  __$$_SearchSTNTimeTableByIDServiceCopyWithImpl(
      _$_SearchSTNTimeTableByIDService _value,
      $Res Function(_$_SearchSTNTimeTableByIDService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
  }) {
    return _then(_$_SearchSTNTimeTableByIDService(
      row: freezed == row
          ? _value._row
          : row // ignore: cast_nullable_to_non_nullable
              as List<TableModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchSTNTimeTableByIDService
    implements _SearchSTNTimeTableByIDService {
  const _$_SearchSTNTimeTableByIDService({required final List<TableModel>? row})
      : _row = row;

  factory _$_SearchSTNTimeTableByIDService.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchSTNTimeTableByIDServiceFromJson(json);

  final List<TableModel>? _row;
  @override
  List<TableModel>? get row {
    final value = _row;
    if (value == null) return null;
    if (_row is EqualUnmodifiableListView) return _row;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchSTNTimeTableByIDService(row: $row)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSTNTimeTableByIDService &&
            const DeepCollectionEquality().equals(other._row, _row));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_row));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSTNTimeTableByIDServiceCopyWith<_$_SearchSTNTimeTableByIDService>
      get copyWith => __$$_SearchSTNTimeTableByIDServiceCopyWithImpl<
          _$_SearchSTNTimeTableByIDService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchSTNTimeTableByIDServiceToJson(
      this,
    );
  }
}

abstract class _SearchSTNTimeTableByIDService
    implements SearchSTNTimeTableByIDService {
  const factory _SearchSTNTimeTableByIDService(
          {required final List<TableModel>? row}) =
      _$_SearchSTNTimeTableByIDService;

  factory _SearchSTNTimeTableByIDService.fromJson(Map<String, dynamic> json) =
      _$_SearchSTNTimeTableByIDService.fromJson;

  @override
  List<TableModel>? get row;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSTNTimeTableByIDServiceCopyWith<_$_SearchSTNTimeTableByIDService>
      get copyWith => throw _privateConstructorUsedError;
}

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  @JsonKey(name: 'STATION_CD')
  String get stationcd => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATION_NM')
  String get stationnm => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARRIVETIME')
  String get arrivetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORIGINSTATION')
  String get originstation => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBWAYSNAME')
  String get sname => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBWAYENAME')
  String get ename => throw _privateConstructorUsedError;
  @JsonKey(name: 'EXPRESS_YN')
  EXPRESS get express => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationcd,
      @JsonKey(name: 'STATION_NM') String stationnm,
      @JsonKey(name: 'ARRIVETIME') String arrivetime,
      @JsonKey(name: 'ORIGINSTATION') String originstation,
      @JsonKey(name: 'SUBWAYSNAME') String sname,
      @JsonKey(name: 'SUBWAYENAME') String ename,
      @JsonKey(name: 'EXPRESS_YN') EXPRESS express});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationcd = null,
    Object? stationnm = null,
    Object? arrivetime = null,
    Object? originstation = null,
    Object? sname = null,
    Object? ename = null,
    Object? express = null,
  }) {
    return _then(_value.copyWith(
      stationcd: null == stationcd
          ? _value.stationcd
          : stationcd // ignore: cast_nullable_to_non_nullable
              as String,
      stationnm: null == stationnm
          ? _value.stationnm
          : stationnm // ignore: cast_nullable_to_non_nullable
              as String,
      arrivetime: null == arrivetime
          ? _value.arrivetime
          : arrivetime // ignore: cast_nullable_to_non_nullable
              as String,
      originstation: null == originstation
          ? _value.originstation
          : originstation // ignore: cast_nullable_to_non_nullable
              as String,
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      ename: null == ename
          ? _value.ename
          : ename // ignore: cast_nullable_to_non_nullable
              as String,
      express: null == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as EXPRESS,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableModelCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$_TableModelCopyWith(
          _$_TableModel value, $Res Function(_$_TableModel) then) =
      __$$_TableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationcd,
      @JsonKey(name: 'STATION_NM') String stationnm,
      @JsonKey(name: 'ARRIVETIME') String arrivetime,
      @JsonKey(name: 'ORIGINSTATION') String originstation,
      @JsonKey(name: 'SUBWAYSNAME') String sname,
      @JsonKey(name: 'SUBWAYENAME') String ename,
      @JsonKey(name: 'EXPRESS_YN') EXPRESS express});
}

/// @nodoc
class __$$_TableModelCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$_TableModel>
    implements _$$_TableModelCopyWith<$Res> {
  __$$_TableModelCopyWithImpl(
      _$_TableModel _value, $Res Function(_$_TableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationcd = null,
    Object? stationnm = null,
    Object? arrivetime = null,
    Object? originstation = null,
    Object? sname = null,
    Object? ename = null,
    Object? express = null,
  }) {
    return _then(_$_TableModel(
      stationcd: null == stationcd
          ? _value.stationcd
          : stationcd // ignore: cast_nullable_to_non_nullable
              as String,
      stationnm: null == stationnm
          ? _value.stationnm
          : stationnm // ignore: cast_nullable_to_non_nullable
              as String,
      arrivetime: null == arrivetime
          ? _value.arrivetime
          : arrivetime // ignore: cast_nullable_to_non_nullable
              as String,
      originstation: null == originstation
          ? _value.originstation
          : originstation // ignore: cast_nullable_to_non_nullable
              as String,
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      ename: null == ename
          ? _value.ename
          : ename // ignore: cast_nullable_to_non_nullable
              as String,
      express: null == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as EXPRESS,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableModel implements _TableModel {
  const _$_TableModel(
      {@JsonKey(name: 'STATION_CD') this.stationcd = "정보없음",
      @JsonKey(name: 'STATION_NM') this.stationnm = "정보없음",
      @JsonKey(name: 'ARRIVETIME') this.arrivetime = "정보없음",
      @JsonKey(name: 'ORIGINSTATION') this.originstation = "정보없음",
      @JsonKey(name: 'SUBWAYSNAME') this.sname = "정보없음",
      @JsonKey(name: 'SUBWAYENAME') this.ename = "정보없음",
      @JsonKey(name: 'EXPRESS_YN') this.express = EXPRESS.GENERAL});

  factory _$_TableModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableModelFromJson(json);

  @override
  @JsonKey(name: 'STATION_CD')
  final String stationcd;
  @override
  @JsonKey(name: 'STATION_NM')
  final String stationnm;
  @override
  @JsonKey(name: 'ARRIVETIME')
  final String arrivetime;
  @override
  @JsonKey(name: 'ORIGINSTATION')
  final String originstation;
  @override
  @JsonKey(name: 'SUBWAYSNAME')
  final String sname;
  @override
  @JsonKey(name: 'SUBWAYENAME')
  final String ename;
  @override
  @JsonKey(name: 'EXPRESS_YN')
  final EXPRESS express;

  @override
  String toString() {
    return 'TableModel(stationcd: $stationcd, stationnm: $stationnm, arrivetime: $arrivetime, originstation: $originstation, sname: $sname, ename: $ename, express: $express)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableModel &&
            (identical(other.stationcd, stationcd) ||
                other.stationcd == stationcd) &&
            (identical(other.stationnm, stationnm) ||
                other.stationnm == stationnm) &&
            (identical(other.arrivetime, arrivetime) ||
                other.arrivetime == arrivetime) &&
            (identical(other.originstation, originstation) ||
                other.originstation == originstation) &&
            (identical(other.sname, sname) || other.sname == sname) &&
            (identical(other.ename, ename) || other.ename == ename) &&
            (identical(other.express, express) || other.express == express));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stationcd, stationnm, arrivetime,
      originstation, sname, ename, express);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      __$$_TableModelCopyWithImpl<_$_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableModelToJson(
      this,
    );
  }
}

abstract class _TableModel implements TableModel {
  const factory _TableModel(
      {@JsonKey(name: 'STATION_CD') final String stationcd,
      @JsonKey(name: 'STATION_NM') final String stationnm,
      @JsonKey(name: 'ARRIVETIME') final String arrivetime,
      @JsonKey(name: 'ORIGINSTATION') final String originstation,
      @JsonKey(name: 'SUBWAYSNAME') final String sname,
      @JsonKey(name: 'SUBWAYENAME') final String ename,
      @JsonKey(name: 'EXPRESS_YN') final EXPRESS express}) = _$_TableModel;

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$_TableModel.fromJson;

  @override
  @JsonKey(name: 'STATION_CD')
  String get stationcd;
  @override
  @JsonKey(name: 'STATION_NM')
  String get stationnm;
  @override
  @JsonKey(name: 'ARRIVETIME')
  String get arrivetime;
  @override
  @JsonKey(name: 'ORIGINSTATION')
  String get originstation;
  @override
  @JsonKey(name: 'SUBWAYSNAME')
  String get sname;
  @override
  @JsonKey(name: 'SUBWAYENAME')
  String get ename;
  @override
  @JsonKey(name: 'EXPRESS_YN')
  EXPRESS get express;
  @override
  @JsonKey(ignore: true)
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
