part of 'sub_repo_bloc.dart';

@freezed
class SubRepoEvent with _$SubRepoEvent {
  const factory SubRepoEvent.repo() = _Repo;
}
