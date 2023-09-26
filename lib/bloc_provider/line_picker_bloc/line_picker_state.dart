part of 'line_picker_bloc.dart';

@freezed
class LinePickerState with _$LinePickerState {
  const factory LinePickerState.initial() = _Initial;
  const factory LinePickerState.loading() = _Loading;
  const factory LinePickerState.loaded(
      List<ArrivalModel> filtedup,
      List<ArrivalModel> filteddown
      ) = _Loaded;
  const factory LinePickerState.error(String? msg) = _Error;
}
