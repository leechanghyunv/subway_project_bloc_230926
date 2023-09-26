part of 'sub_info_filter_bloc.dart';

@freezed
class SubInfoFilterState with _$SubInfoFilterState {
  const factory SubInfoFilterState.initial() = _Initial;
  const factory SubInfoFilterState.loading() = _Loading;
  const factory SubInfoFilterState.loaded(List<SubwayModel> filter) = _Loaded;
  const factory SubInfoFilterState.error(String msg) = _Error;
}
