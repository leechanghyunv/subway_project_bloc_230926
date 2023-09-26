// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchCode _$SearchCodeFromJson(Map<String, dynamic> json) {
  return _SearchCode.fromJson(json);
}

/// @nodoc
mixin _$SearchCode {
  @JsonKey(name: 'SearchInfoBySubwayNameService')
  SearchInfoBySubwayNameService? get codedata =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCodeCopyWith<SearchCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCodeCopyWith<$Res> {
  factory $SearchCodeCopyWith(
          SearchCode value, $Res Function(SearchCode) then) =
      _$SearchCodeCopyWithImpl<$Res, SearchCode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchInfoBySubwayNameService')
      SearchInfoBySubwayNameService? codedata});

  $SearchInfoBySubwayNameServiceCopyWith<$Res>? get codedata;
}

/// @nodoc
class _$SearchCodeCopyWithImpl<$Res, $Val extends SearchCode>
    implements $SearchCodeCopyWith<$Res> {
  _$SearchCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codedata = freezed,
  }) {
    return _then(_value.copyWith(
      codedata: freezed == codedata
          ? _value.codedata
          : codedata // ignore: cast_nullable_to_non_nullable
              as SearchInfoBySubwayNameService?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchInfoBySubwayNameServiceCopyWith<$Res>? get codedata {
    if (_value.codedata == null) {
      return null;
    }

    return $SearchInfoBySubwayNameServiceCopyWith<$Res>(_value.codedata!,
        (value) {
      return _then(_value.copyWith(codedata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchCodeCopyWith<$Res>
    implements $SearchCodeCopyWith<$Res> {
  factory _$$_SearchCodeCopyWith(
          _$_SearchCode value, $Res Function(_$_SearchCode) then) =
      __$$_SearchCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchInfoBySubwayNameService')
      SearchInfoBySubwayNameService? codedata});

  @override
  $SearchInfoBySubwayNameServiceCopyWith<$Res>? get codedata;
}

/// @nodoc
class __$$_SearchCodeCopyWithImpl<$Res>
    extends _$SearchCodeCopyWithImpl<$Res, _$_SearchCode>
    implements _$$_SearchCodeCopyWith<$Res> {
  __$$_SearchCodeCopyWithImpl(
      _$_SearchCode _value, $Res Function(_$_SearchCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codedata = freezed,
  }) {
    return _then(_$_SearchCode(
      codedata: freezed == codedata
          ? _value.codedata
          : codedata // ignore: cast_nullable_to_non_nullable
              as SearchInfoBySubwayNameService?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchCode with DiagnosticableTreeMixin implements _SearchCode {
  const _$_SearchCode(
      {@JsonKey(name: 'SearchInfoBySubwayNameService') this.codedata});

  factory _$_SearchCode.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCodeFromJson(json);

  @override
  @JsonKey(name: 'SearchInfoBySubwayNameService')
  final SearchInfoBySubwayNameService? codedata;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchCode(codedata: $codedata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchCode'))
      ..add(DiagnosticsProperty('codedata', codedata));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCode &&
            (identical(other.codedata, codedata) ||
                other.codedata == codedata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codedata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCodeCopyWith<_$_SearchCode> get copyWith =>
      __$$_SearchCodeCopyWithImpl<_$_SearchCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCodeToJson(
      this,
    );
  }
}

abstract class _SearchCode implements SearchCode {
  const factory _SearchCode(
      {@JsonKey(name: 'SearchInfoBySubwayNameService')
      final SearchInfoBySubwayNameService? codedata}) = _$_SearchCode;

  factory _SearchCode.fromJson(Map<String, dynamic> json) =
      _$_SearchCode.fromJson;

  @override
  @JsonKey(name: 'SearchInfoBySubwayNameService')
  SearchInfoBySubwayNameService? get codedata;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCodeCopyWith<_$_SearchCode> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchInfoBySubwayNameService _$SearchInfoBySubwayNameServiceFromJson(
    Map<String, dynamic> json) {
  return _SearchInfoBySubwayNameService.fromJson(json);
}

/// @nodoc
mixin _$SearchInfoBySubwayNameService {
  List<CodeModel> get row => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInfoBySubwayNameServiceCopyWith<SearchInfoBySubwayNameService>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInfoBySubwayNameServiceCopyWith<$Res> {
  factory $SearchInfoBySubwayNameServiceCopyWith(
          SearchInfoBySubwayNameService value,
          $Res Function(SearchInfoBySubwayNameService) then) =
      _$SearchInfoBySubwayNameServiceCopyWithImpl<$Res,
          SearchInfoBySubwayNameService>;
  @useResult
  $Res call({List<CodeModel> row});
}

/// @nodoc
class _$SearchInfoBySubwayNameServiceCopyWithImpl<$Res,
        $Val extends SearchInfoBySubwayNameService>
    implements $SearchInfoBySubwayNameServiceCopyWith<$Res> {
  _$SearchInfoBySubwayNameServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
  }) {
    return _then(_value.copyWith(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as List<CodeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchInfoBySubwayNameServiceCopyWith<$Res>
    implements $SearchInfoBySubwayNameServiceCopyWith<$Res> {
  factory _$$_SearchInfoBySubwayNameServiceCopyWith(
          _$_SearchInfoBySubwayNameService value,
          $Res Function(_$_SearchInfoBySubwayNameService) then) =
      __$$_SearchInfoBySubwayNameServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CodeModel> row});
}

/// @nodoc
class __$$_SearchInfoBySubwayNameServiceCopyWithImpl<$Res>
    extends _$SearchInfoBySubwayNameServiceCopyWithImpl<$Res,
        _$_SearchInfoBySubwayNameService>
    implements _$$_SearchInfoBySubwayNameServiceCopyWith<$Res> {
  __$$_SearchInfoBySubwayNameServiceCopyWithImpl(
      _$_SearchInfoBySubwayNameService _value,
      $Res Function(_$_SearchInfoBySubwayNameService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
  }) {
    return _then(_$_SearchInfoBySubwayNameService(
      row: null == row
          ? _value._row
          : row // ignore: cast_nullable_to_non_nullable
              as List<CodeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchInfoBySubwayNameService
    with DiagnosticableTreeMixin
    implements _SearchInfoBySubwayNameService {
  const _$_SearchInfoBySubwayNameService({required final List<CodeModel> row})
      : _row = row;

  factory _$_SearchInfoBySubwayNameService.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchInfoBySubwayNameServiceFromJson(json);

  final List<CodeModel> _row;
  @override
  List<CodeModel> get row {
    if (_row is EqualUnmodifiableListView) return _row;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_row);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchInfoBySubwayNameService(row: $row)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchInfoBySubwayNameService'))
      ..add(DiagnosticsProperty('row', row));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchInfoBySubwayNameService &&
            const DeepCollectionEquality().equals(other._row, _row));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_row));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchInfoBySubwayNameServiceCopyWith<_$_SearchInfoBySubwayNameService>
      get copyWith => __$$_SearchInfoBySubwayNameServiceCopyWithImpl<
          _$_SearchInfoBySubwayNameService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchInfoBySubwayNameServiceToJson(
      this,
    );
  }
}

abstract class _SearchInfoBySubwayNameService
    implements SearchInfoBySubwayNameService {
  const factory _SearchInfoBySubwayNameService(
      {required final List<CodeModel> row}) = _$_SearchInfoBySubwayNameService;

  factory _SearchInfoBySubwayNameService.fromJson(Map<String, dynamic> json) =
      _$_SearchInfoBySubwayNameService.fromJson;

  @override
  List<CodeModel> get row;
  @override
  @JsonKey(ignore: true)
  _$$_SearchInfoBySubwayNameServiceCopyWith<_$_SearchInfoBySubwayNameService>
      get copyWith => throw _privateConstructorUsedError;
}

CodeModel _$CodeModelFromJson(Map<String, dynamic> json) {
  return _CodeModel.fromJson(json);
}

/// @nodoc
mixin _$CodeModel {
  @JsonKey(name: 'STATION_CD')
  String get stationCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATION_NM')
  String get subname => throw _privateConstructorUsedError;
  @JsonKey(name: 'LINE_NUM')
  String get line => throw _privateConstructorUsedError;
  @JsonKey(name: 'FR_CODE')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeModelCopyWith<CodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeModelCopyWith<$Res> {
  factory $CodeModelCopyWith(CodeModel value, $Res Function(CodeModel) then) =
      _$CodeModelCopyWithImpl<$Res, CodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationCd,
      @JsonKey(name: 'STATION_NM') String subname,
      @JsonKey(name: 'LINE_NUM') String line,
      @JsonKey(name: 'FR_CODE') String code});
}

/// @nodoc
class _$CodeModelCopyWithImpl<$Res, $Val extends CodeModel>
    implements $CodeModelCopyWith<$Res> {
  _$CodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationCd = null,
    Object? subname = null,
    Object? line = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      stationCd: null == stationCd
          ? _value.stationCd
          : stationCd // ignore: cast_nullable_to_non_nullable
              as String,
      subname: null == subname
          ? _value.subname
          : subname // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeModelCopyWith<$Res> implements $CodeModelCopyWith<$Res> {
  factory _$$_CodeModelCopyWith(
          _$_CodeModel value, $Res Function(_$_CodeModel) then) =
      __$$_CodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'STATION_CD') String stationCd,
      @JsonKey(name: 'STATION_NM') String subname,
      @JsonKey(name: 'LINE_NUM') String line,
      @JsonKey(name: 'FR_CODE') String code});
}

/// @nodoc
class __$$_CodeModelCopyWithImpl<$Res>
    extends _$CodeModelCopyWithImpl<$Res, _$_CodeModel>
    implements _$$_CodeModelCopyWith<$Res> {
  __$$_CodeModelCopyWithImpl(
      _$_CodeModel _value, $Res Function(_$_CodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationCd = null,
    Object? subname = null,
    Object? line = null,
    Object? code = null,
  }) {
    return _then(_$_CodeModel(
      stationCd: null == stationCd
          ? _value.stationCd
          : stationCd // ignore: cast_nullable_to_non_nullable
              as String,
      subname: null == subname
          ? _value.subname
          : subname // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodeModel with DiagnosticableTreeMixin implements _CodeModel {
  const _$_CodeModel(
      {@JsonKey(name: 'STATION_CD') this.stationCd = "정보없음",
      @JsonKey(name: 'STATION_NM') this.subname = "정보없음",
      @JsonKey(name: 'LINE_NUM') this.line = "정보없음",
      @JsonKey(name: 'FR_CODE') this.code = "정보없음"});

  factory _$_CodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CodeModelFromJson(json);

  @override
  @JsonKey(name: 'STATION_CD')
  final String stationCd;
  @override
  @JsonKey(name: 'STATION_NM')
  final String subname;
  @override
  @JsonKey(name: 'LINE_NUM')
  final String line;
  @override
  @JsonKey(name: 'FR_CODE')
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CodeModel(stationCd: $stationCd, subname: $subname, line: $line, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CodeModel'))
      ..add(DiagnosticsProperty('stationCd', stationCd))
      ..add(DiagnosticsProperty('subname', subname))
      ..add(DiagnosticsProperty('line', line))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeModel &&
            (identical(other.stationCd, stationCd) ||
                other.stationCd == stationCd) &&
            (identical(other.subname, subname) || other.subname == subname) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stationCd, subname, line, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeModelCopyWith<_$_CodeModel> get copyWith =>
      __$$_CodeModelCopyWithImpl<_$_CodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CodeModelToJson(
      this,
    );
  }
}

abstract class _CodeModel implements CodeModel {
  const factory _CodeModel(
      {@JsonKey(name: 'STATION_CD') final String stationCd,
      @JsonKey(name: 'STATION_NM') final String subname,
      @JsonKey(name: 'LINE_NUM') final String line,
      @JsonKey(name: 'FR_CODE') final String code}) = _$_CodeModel;

  factory _CodeModel.fromJson(Map<String, dynamic> json) =
      _$_CodeModel.fromJson;

  @override
  @JsonKey(name: 'STATION_CD')
  String get stationCd;
  @override
  @JsonKey(name: 'STATION_NM')
  String get subname;
  @override
  @JsonKey(name: 'LINE_NUM')
  String get line;
  @override
  @JsonKey(name: 'FR_CODE')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_CodeModelCopyWith<_$_CodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
