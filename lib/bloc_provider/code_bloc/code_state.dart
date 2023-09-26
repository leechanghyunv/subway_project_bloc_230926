part of 'code_bloc.dart';

@freezed
class CodeState with _$CodeState {
  const factory CodeState.initial() = _Initial;
  const factory CodeState.loading() = _Loading;
  const factory CodeState.loaded(String code) = _Loaded;
  const factory CodeState.error(String msg) = _Error;

}
