part of 'sub_repo_bloc.dart';

@freezed
class SubRepoState with _$SubRepoState {
  const factory SubRepoState.initial() = _Initial;
  const factory SubRepoState.loading() = _Loading;
  const factory SubRepoState.loaded(List<SubwayModel> repo) = _Loaded;
  const factory SubRepoState.error(String msg) = _Error;
}
