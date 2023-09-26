import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_with_code_model.freezed.dart';
part 'data_with_code_model.g.dart';

@freezed
class SubwayModelwithCode with _$SubwayModelwithCode {
  const factory SubwayModelwithCode({
    @Default('정보없음') String subname,
    @Default('정보없음') String engname,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default('정보없음') String line_ui,
    @Default(0) int subwayid,
    @Default('정보없음') String line,
    @Default('정보없음') String heading,
    @Default('정보없음') String code,
  }) = _SubwayModelwithCode;
  factory SubwayModelwithCode.fromJson(Map<String, dynamic> json) =>
      _$SubwayModelwithCodeFromJson(json);
}