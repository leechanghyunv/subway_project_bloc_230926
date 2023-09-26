// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrival_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArrivalEvent {
  String get name => throw _privateConstructorUsedError;
  String get line => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String line) ArrivalList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String line)? ArrivalList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String line)? ArrivalList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArrivalList value) ArrivalList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ArrivalList value)? ArrivalList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArrivalList value)? ArrivalList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArrivalEventCopyWith<ArrivalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrivalEventCopyWith<$Res> {
  factory $ArrivalEventCopyWith(
          ArrivalEvent value, $Res Function(ArrivalEvent) then) =
      _$ArrivalEventCopyWithImpl<$Res, ArrivalEvent>;
  @useResult
  $Res call({String name, String line});
}

/// @nodoc
class _$ArrivalEventCopyWithImpl<$Res, $Val extends ArrivalEvent>
    implements $ArrivalEventCopyWith<$Res> {
  _$ArrivalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? line = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArrivalListCopyWith<$Res>
    implements $ArrivalEventCopyWith<$Res> {
  factory _$$_ArrivalListCopyWith(
          _$_ArrivalList value, $Res Function(_$_ArrivalList) then) =
      __$$_ArrivalListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String line});
}

/// @nodoc
class __$$_ArrivalListCopyWithImpl<$Res>
    extends _$ArrivalEventCopyWithImpl<$Res, _$_ArrivalList>
    implements _$$_ArrivalListCopyWith<$Res> {
  __$$_ArrivalListCopyWithImpl(
      _$_ArrivalList _value, $Res Function(_$_ArrivalList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? line = null,
  }) {
    return _then(_$_ArrivalList(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArrivalList implements _ArrivalList {
  const _$_ArrivalList(this.name, this.line);

  @override
  final String name;
  @override
  final String line;

  @override
  String toString() {
    return 'ArrivalEvent.ArrivalList(name: $name, line: $line)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArrivalList &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.line, line) || other.line == line));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, line);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArrivalListCopyWith<_$_ArrivalList> get copyWith =>
      __$$_ArrivalListCopyWithImpl<_$_ArrivalList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String line) ArrivalList,
  }) {
    return ArrivalList(name, line);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String line)? ArrivalList,
  }) {
    return ArrivalList?.call(name, line);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String line)? ArrivalList,
    required TResult orElse(),
  }) {
    if (ArrivalList != null) {
      return ArrivalList(name, line);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArrivalList value) ArrivalList,
  }) {
    return ArrivalList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ArrivalList value)? ArrivalList,
  }) {
    return ArrivalList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArrivalList value)? ArrivalList,
    required TResult orElse(),
  }) {
    if (ArrivalList != null) {
      return ArrivalList(this);
    }
    return orElse();
  }
}

abstract class _ArrivalList implements ArrivalEvent {
  const factory _ArrivalList(final String name, final String line) =
      _$_ArrivalList;

  @override
  String get name;
  @override
  String get line;
  @override
  @JsonKey(ignore: true)
  _$$_ArrivalListCopyWith<_$_ArrivalList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArrivalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArrivalModel> arrivalmodel, String up1,
            String down1, String up2, String down2)
        loaded,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrivalStateCopyWith<$Res> {
  factory $ArrivalStateCopyWith(
          ArrivalState value, $Res Function(ArrivalState) then) =
      _$ArrivalStateCopyWithImpl<$Res, ArrivalState>;
}

/// @nodoc
class _$ArrivalStateCopyWithImpl<$Res, $Val extends ArrivalState>
    implements $ArrivalStateCopyWith<$Res> {
  _$ArrivalStateCopyWithImpl(this._value, this._then);

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
    extends _$ArrivalStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ArrivalState.initial()';
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
    required TResult Function(List<ArrivalModel> arrivalmodel, String up1,
            String down1, String up2, String down2)
        loaded,
    required TResult Function(String msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult? Function(String msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArrivalState {
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
    extends _$ArrivalStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ArrivalState.loading()';
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
    required TResult Function(List<ArrivalModel> arrivalmodel, String up1,
            String down1, String up2, String down2)
        loaded,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArrivalState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ArrivalModel> arrivalmodel,
      String up1,
      String down1,
      String up2,
      String down2});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ArrivalStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalmodel = null,
    Object? up1 = null,
    Object? down1 = null,
    Object? up2 = null,
    Object? down2 = null,
  }) {
    return _then(_$_Loaded(
      null == arrivalmodel
          ? _value._arrivalmodel
          : arrivalmodel // ignore: cast_nullable_to_non_nullable
              as List<ArrivalModel>,
      null == up1
          ? _value.up1
          : up1 // ignore: cast_nullable_to_non_nullable
              as String,
      null == down1
          ? _value.down1
          : down1 // ignore: cast_nullable_to_non_nullable
              as String,
      null == up2
          ? _value.up2
          : up2 // ignore: cast_nullable_to_non_nullable
              as String,
      null == down2
          ? _value.down2
          : down2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<ArrivalModel> arrivalmodel, this.up1, this.down1,
      this.up2, this.down2)
      : _arrivalmodel = arrivalmodel;

  final List<ArrivalModel> _arrivalmodel;
  @override
  List<ArrivalModel> get arrivalmodel {
    if (_arrivalmodel is EqualUnmodifiableListView) return _arrivalmodel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arrivalmodel);
  }

  @override
  final String up1;
  @override
  final String down1;
  @override
  final String up2;
  @override
  final String down2;

  @override
  String toString() {
    return 'ArrivalState.loaded(arrivalmodel: $arrivalmodel, up1: $up1, down1: $down1, up2: $up2, down2: $down2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._arrivalmodel, _arrivalmodel) &&
            (identical(other.up1, up1) || other.up1 == up1) &&
            (identical(other.down1, down1) || other.down1 == down1) &&
            (identical(other.up2, up2) || other.up2 == up2) &&
            (identical(other.down2, down2) || other.down2 == down2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_arrivalmodel),
      up1,
      down1,
      up2,
      down2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArrivalModel> arrivalmodel, String up1,
            String down1, String up2, String down2)
        loaded,
    required TResult Function(String msg) error,
  }) {
    return loaded(arrivalmodel, up1, down1, up2, down2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult? Function(String msg)? error,
  }) {
    return loaded?.call(arrivalmodel, up1, down1, up2, down2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(arrivalmodel, up1, down1, up2, down2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArrivalState {
  const factory _Loaded(final List<ArrivalModel> arrivalmodel, final String up1,
      final String down1, final String up2, final String down2) = _$_Loaded;

  List<ArrivalModel> get arrivalmodel;
  String get up1;
  String get down1;
  String get up2;
  String get down2;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
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
    extends _$ArrivalStateCopyWithImpl<$Res, _$_Error>
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
    return 'ArrivalState.error(msg: $msg)';
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
    required TResult Function(List<ArrivalModel> arrivalmodel, String up1,
            String down1, String up2, String down2)
        loaded,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArrivalModel> arrivalmodel, String up1, String down1,
            String up2, String down2)?
        loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArrivalState {
  const factory _Error(final String msg) = _$_Error;

  String get msg;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
