part of 'latlng_bloc.dart';

@freezed
class LatlngState with _$LatlngState {
  const factory LatlngState.initial() = _Initial;
  const factory LatlngState.loading() = _Loading;
  const factory LatlngState.loaded(List<SubwayModel> model) = _Loaded;
  const factory LatlngState.error(String err) = _Error;
}
