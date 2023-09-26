// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransferEvent {
  List<SubwayModelwithCode> get stateA => throw _privateConstructorUsedError;
  List<SubwayModelwithCode> get stateB => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        switchA,
    required TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)
        switchB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult? Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchA value) switchA,
    required TResult Function(_SwitchB value) switchB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SwitchA value)? switchA,
    TResult? Function(_SwitchB value)? switchB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchA value)? switchA,
    TResult Function(_SwitchB value)? switchB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferEventCopyWith<TransferEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferEventCopyWith<$Res> {
  factory $TransferEventCopyWith(
          TransferEvent value, $Res Function(TransferEvent) then) =
      _$TransferEventCopyWithImpl<$Res, TransferEvent>;
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class _$TransferEventCopyWithImpl<$Res, $Val extends TransferEvent>
    implements $TransferEventCopyWith<$Res> {
  _$TransferEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_SwitchACopyWith<$Res>
    implements $TransferEventCopyWith<$Res> {
  factory _$$_SwitchACopyWith(
          _$_SwitchA value, $Res Function(_$_SwitchA) then) =
      __$$_SwitchACopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class __$$_SwitchACopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res, _$_SwitchA>
    implements _$$_SwitchACopyWith<$Res> {
  __$$_SwitchACopyWithImpl(_$_SwitchA _value, $Res Function(_$_SwitchA) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateA = null,
    Object? stateB = null,
  }) {
    return _then(_$_SwitchA(
      null == stateA
          ? _value._stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      null == stateB
          ? _value._stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ));
  }
}

/// @nodoc

class _$_SwitchA implements _SwitchA {
  const _$_SwitchA(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB)
      : _stateA = stateA,
        _stateB = stateB;

  final List<SubwayModelwithCode> _stateA;
  @override
  List<SubwayModelwithCode> get stateA {
    if (_stateA is EqualUnmodifiableListView) return _stateA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateA);
  }

  final List<SubwayModelwithCode> _stateB;
  @override
  List<SubwayModelwithCode> get stateB {
    if (_stateB is EqualUnmodifiableListView) return _stateB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateB);
  }

  @override
  String toString() {
    return 'TransferEvent.switchA(stateA: $stateA, stateB: $stateB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchA &&
            const DeepCollectionEquality().equals(other._stateA, _stateA) &&
            const DeepCollectionEquality().equals(other._stateB, _stateB));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stateA),
      const DeepCollectionEquality().hash(_stateB));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchACopyWith<_$_SwitchA> get copyWith =>
      __$$_SwitchACopyWithImpl<_$_SwitchA>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        switchA,
    required TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)
        switchB,
  }) {
    return switchA(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult? Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
  }) {
    return switchA?.call(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
    required TResult orElse(),
  }) {
    if (switchA != null) {
      return switchA(stateA, stateB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchA value) switchA,
    required TResult Function(_SwitchB value) switchB,
  }) {
    return switchA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SwitchA value)? switchA,
    TResult? Function(_SwitchB value)? switchB,
  }) {
    return switchA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchA value)? switchA,
    TResult Function(_SwitchB value)? switchB,
    required TResult orElse(),
  }) {
    if (switchA != null) {
      return switchA(this);
    }
    return orElse();
  }
}

abstract class _SwitchA implements TransferEvent {
  const factory _SwitchA(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB) = _$_SwitchA;

  @override
  List<SubwayModelwithCode> get stateA;
  @override
  List<SubwayModelwithCode> get stateB;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchACopyWith<_$_SwitchA> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchBCopyWith<$Res>
    implements $TransferEventCopyWith<$Res> {
  factory _$$_SwitchBCopyWith(
          _$_SwitchB value, $Res Function(_$_SwitchB) then) =
      __$$_SwitchBCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA});
}

/// @nodoc
class __$$_SwitchBCopyWithImpl<$Res>
    extends _$TransferEventCopyWithImpl<$Res, _$_SwitchB>
    implements _$$_SwitchBCopyWith<$Res> {
  __$$_SwitchBCopyWithImpl(_$_SwitchB _value, $Res Function(_$_SwitchB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateB = null,
    Object? stateA = null,
  }) {
    return _then(_$_SwitchB(
      null == stateB
          ? _value._stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      null == stateA
          ? _value._stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ));
  }
}

/// @nodoc

class _$_SwitchB implements _SwitchB {
  const _$_SwitchB(final List<SubwayModelwithCode> stateB,
      final List<SubwayModelwithCode> stateA)
      : _stateB = stateB,
        _stateA = stateA;

  final List<SubwayModelwithCode> _stateB;
  @override
  List<SubwayModelwithCode> get stateB {
    if (_stateB is EqualUnmodifiableListView) return _stateB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateB);
  }

  final List<SubwayModelwithCode> _stateA;
  @override
  List<SubwayModelwithCode> get stateA {
    if (_stateA is EqualUnmodifiableListView) return _stateA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateA);
  }

  @override
  String toString() {
    return 'TransferEvent.switchB(stateB: $stateB, stateA: $stateA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchB &&
            const DeepCollectionEquality().equals(other._stateB, _stateB) &&
            const DeepCollectionEquality().equals(other._stateA, _stateA));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stateB),
      const DeepCollectionEquality().hash(_stateA));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchBCopyWith<_$_SwitchB> get copyWith =>
      __$$_SwitchBCopyWithImpl<_$_SwitchB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        switchA,
    required TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)
        switchB,
  }) {
    return switchB(stateB, stateA);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult? Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
  }) {
    return switchB?.call(stateB, stateA);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        switchA,
    TResult Function(
            List<SubwayModelwithCode> stateB, List<SubwayModelwithCode> stateA)?
        switchB,
    required TResult orElse(),
  }) {
    if (switchB != null) {
      return switchB(stateB, stateA);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchA value) switchA,
    required TResult Function(_SwitchB value) switchB,
  }) {
    return switchB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SwitchA value)? switchA,
    TResult? Function(_SwitchB value)? switchB,
  }) {
    return switchB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchA value)? switchA,
    TResult Function(_SwitchB value)? switchB,
    required TResult orElse(),
  }) {
    if (switchB != null) {
      return switchB(this);
    }
    return orElse();
  }
}

abstract class _SwitchB implements TransferEvent {
  const factory _SwitchB(final List<SubwayModelwithCode> stateB,
      final List<SubwayModelwithCode> stateA) = _$_SwitchB;

  @override
  List<SubwayModelwithCode> get stateB;
  @override
  List<SubwayModelwithCode> get stateA;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchBCopyWith<_$_SwitchB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferStateCopyWith<$Res> {
  factory $TransferStateCopyWith(
          TransferState value, $Res Function(TransferState) then) =
      _$TransferStateCopyWithImpl<$Res, TransferState>;
}

/// @nodoc
class _$TransferStateCopyWithImpl<$Res, $Val extends TransferState>
    implements $TransferStateCopyWith<$Res> {
  _$TransferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransferState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransferState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TransferState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransferState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedACopyWith<$Res> {
  factory _$$_LoadedACopyWith(
          _$_LoadedA value, $Res Function(_$_LoadedA) then) =
      __$$_LoadedACopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class __$$_LoadedACopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$_LoadedA>
    implements _$$_LoadedACopyWith<$Res> {
  __$$_LoadedACopyWithImpl(_$_LoadedA _value, $Res Function(_$_LoadedA) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateA = null,
    Object? stateB = null,
  }) {
    return _then(_$_LoadedA(
      null == stateA
          ? _value._stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      null == stateB
          ? _value._stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ));
  }
}

/// @nodoc

class _$_LoadedA implements _LoadedA {
  const _$_LoadedA(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB)
      : _stateA = stateA,
        _stateB = stateB;

  final List<SubwayModelwithCode> _stateA;
  @override
  List<SubwayModelwithCode> get stateA {
    if (_stateA is EqualUnmodifiableListView) return _stateA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateA);
  }

  final List<SubwayModelwithCode> _stateB;
  @override
  List<SubwayModelwithCode> get stateB {
    if (_stateB is EqualUnmodifiableListView) return _stateB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateB);
  }

  @override
  String toString() {
    return 'TransferState.loadedA(stateA: $stateA, stateB: $stateB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedA &&
            const DeepCollectionEquality().equals(other._stateA, _stateA) &&
            const DeepCollectionEquality().equals(other._stateB, _stateB));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stateA),
      const DeepCollectionEquality().hash(_stateB));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedACopyWith<_$_LoadedA> get copyWith =>
      __$$_LoadedACopyWithImpl<_$_LoadedA>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) {
    return loadedA(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) {
    return loadedA?.call(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadedA != null) {
      return loadedA(stateA, stateB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) {
    return loadedA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) {
    return loadedA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedA != null) {
      return loadedA(this);
    }
    return orElse();
  }
}

abstract class _LoadedA implements TransferState {
  const factory _LoadedA(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB) = _$_LoadedA;

  List<SubwayModelwithCode> get stateA;
  List<SubwayModelwithCode> get stateB;
  @JsonKey(ignore: true)
  _$$_LoadedACopyWith<_$_LoadedA> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedBCopyWith<$Res> {
  factory _$$_LoadedBCopyWith(
          _$_LoadedB value, $Res Function(_$_LoadedB) then) =
      __$$_LoadedBCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB});
}

/// @nodoc
class __$$_LoadedBCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$_LoadedB>
    implements _$$_LoadedBCopyWith<$Res> {
  __$$_LoadedBCopyWithImpl(_$_LoadedB _value, $Res Function(_$_LoadedB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateA = null,
    Object? stateB = null,
  }) {
    return _then(_$_LoadedB(
      null == stateA
          ? _value._stateA
          : stateA // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
      null == stateB
          ? _value._stateB
          : stateB // ignore: cast_nullable_to_non_nullable
              as List<SubwayModelwithCode>,
    ));
  }
}

/// @nodoc

class _$_LoadedB implements _LoadedB {
  const _$_LoadedB(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB)
      : _stateA = stateA,
        _stateB = stateB;

  final List<SubwayModelwithCode> _stateA;
  @override
  List<SubwayModelwithCode> get stateA {
    if (_stateA is EqualUnmodifiableListView) return _stateA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateA);
  }

  final List<SubwayModelwithCode> _stateB;
  @override
  List<SubwayModelwithCode> get stateB {
    if (_stateB is EqualUnmodifiableListView) return _stateB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateB);
  }

  @override
  String toString() {
    return 'TransferState.loadedB(stateA: $stateA, stateB: $stateB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedB &&
            const DeepCollectionEquality().equals(other._stateA, _stateA) &&
            const DeepCollectionEquality().equals(other._stateB, _stateB));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stateA),
      const DeepCollectionEquality().hash(_stateB));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedBCopyWith<_$_LoadedB> get copyWith =>
      __$$_LoadedBCopyWithImpl<_$_LoadedB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) {
    return loadedB(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) {
    return loadedB?.call(stateA, stateB);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loadedB != null) {
      return loadedB(stateA, stateB);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) {
    return loadedB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) {
    return loadedB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedB != null) {
      return loadedB(this);
    }
    return orElse();
  }
}

abstract class _LoadedB implements TransferState {
  const factory _LoadedB(final List<SubwayModelwithCode> stateA,
      final List<SubwayModelwithCode> stateB) = _$_LoadedB;

  List<SubwayModelwithCode> get stateA;
  List<SubwayModelwithCode> get stateB;
  @JsonKey(ignore: true)
  _$$_LoadedBCopyWith<_$_LoadedB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_Error(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'TransferState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedA,
    required TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)
        loadedB,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult? Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedA,
    TResult Function(
            List<SubwayModelwithCode> stateA, List<SubwayModelwithCode> stateB)?
        loadedB,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedA value) loadedA,
    required TResult Function(_LoadedB value) loadedB,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedA value)? loadedA,
    TResult? Function(_LoadedB value)? loadedB,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedA value)? loadedA,
    TResult Function(_LoadedB value)? loadedB,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransferState {
  const factory _Error(final String msg) = _$_Error;

  String get msg;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
