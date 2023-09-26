part of 'line_picker_bloc.dart';

@freezed
class LinePickerEvent with _$LinePickerEvent {
  const factory LinePickerEvent.started(String name) = _Started;
}
