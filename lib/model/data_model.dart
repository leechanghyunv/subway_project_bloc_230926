import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@Freezed()
class SubwayModel with _$SubwayModel{
  const factory SubwayModel({
    @Default('정보없음') String subname,
    @Default('정보없음') String engname,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default('정보없음') String line_ui,
    @Default(0) int subwayid,
    @Default('정보없음') String line,
    @Default('정보없음') String heading,
    @Default(false) bool? isSelected,
    @Default(0.0) num? km,

  }) = _SubwayModel;
  factory SubwayModel.fromJson(Map<String, Object?> json) => _$SubwayModelFromJson(json);
}
extension MutableSubwayModelExtension on SubwayModel {
  SubwayModel setKm(double newKm) {
    return copyWith(km: newKm);
  }
}