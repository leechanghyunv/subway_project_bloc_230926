// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combined_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CombiendSubInfo _$CombiendSubInfoFromJson(Map<String, dynamic> json) {
  return _CombiendSubInfo.fromJson(json);
}

/// @nodoc
mixin _$CombiendSubInfo {
  List<SubwayModelwithCode> get stateA => throw _privateConstructorUsedError;
  List<SubwayModelwithCode> get stateB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CombiendSubInfoCopyWith<CombiendSubInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CombiendSubInfoCopyWith<$Res> {
  factory $CombiendSubInfoCopyWith(
          CombiendSubInfo value, $Res Function(CombiendSubInfo) then) =
      _$CombiendSubInfoCopyWithImpl<$Res, CombiendSubInfo>;
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class _$CombiendSubInfoCopyWithImpl<$Res, $Val extends CombiendSubInfo>
    implements $CombiendSubInfoCopyWith<$Res> {
  _$CombiendSubInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateA = null,
    Object? stateB = null,
  }) {
    return _then(_value.copyWith(
      stateA: null == stateA
          ? _value.stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      stateB: null == stateB
          ? _value.stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CombiendSubInfoCopyWith<$Res>
    implements $CombiendSubInfoCopyWith<$Res> {
  factory _$$_CombiendSubInfoCopyWith(
          _$_CombiendSubInfo value, $Res Function(_$_CombiendSubInfo) then) =
      __$$_CombiendSubInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class __$$_CombiendSubInfoCopyWithImpl<$Res>
    extends _$CombiendSubInfoCopyWithImpl<$Res, _$_CombiendSubInfo>
    implements _$$_CombiendSubInfoCopyWith<$Res> {
  __$$_CombiendSubInfoCopyWithImpl(
      _$_CombiendSubInfo _value, $Res Function(_$_CombiendSubInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateA = null,
    Object? stateB = null,
  }) {
    return _then(_$_CombiendSubInfo(
      stateA: null == stateA
          ? _value._stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      stateB: null == stateB
          ? _value._stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CombiendSubInfo
    with DiagnosticableTreeMixin
    implements _CombiendSubInfo {
  const _$_CombiendSubInfo(
      {final List<SubwayModelwithCode> stateA = const [],
      final List<SubwayModelwithCode> stateB = const []})
      : _stateA = stateA,
        _stateB = stateB;

  factory _$_CombiendSubInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CombiendSubInfoFromJson(json);

  final List<SubwayModelwithCode> _stateA;
  @override
  @JsonKey()
  List<SubwayModelwithCode> get stateA {
    if (_stateA is EqualUnmodifiableListView) return _stateA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateA);
  }

  final List<SubwayModelwithCode> _stateB;
  @override
  @JsonKey()
  List<SubwayModelwithCode> get stateB {
    if (_stateB is EqualUnmodifiableListView) return _stateB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateB);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CombiendSubInfo(stateA: $stateA, stateB: $stateB)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CombiendSubInfo'))
      ..add(DiagnosticsProperty('stateA', stateA))
      ..add(DiagnosticsProperty('stateB', stateB));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CombiendSubInfo &&
            const DeepCollectionEquality().equals(other._stateA, _stateA) &&
            const DeepCollectionEquality().equals(other._stateB, _stateB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stateA),
      const DeepCollectionEquality().hash(_stateB));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CombiendSubInfoCopyWith<_$_CombiendSubInfo> get copyWith =>
      __$$_CombiendSubInfoCopyWithImpl<_$_CombiendSubInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CombiendSubInfoToJson(
      this,
    );
  }
}

abstract class _CombiendSubInfo implements CombiendSubInfo {
  const factory _CombiendSubInfo(
      {final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB}) = _$_CombiendSubInfo;

  factory _CombiendSubInfo.fromJson(Map<String, dynamic> json) =
      _$_CombiendSubInfo.fromJson;

  @override
  List<SubwayModelwithCode> get stateA;
  @override
  List<SubwayModelwithCode> get stateB;
  @override
  @JsonKey(ignore: true)
  _$$_CombiendSubInfoCopyWith<_$_CombiendSubInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
