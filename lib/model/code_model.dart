


import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_model.freezed.dart';
part 'code_model.g.dart';

@freezed
class SearchCode with _$SearchCode {
  const factory SearchCode({
    @JsonKey(name: 'SearchInfoBySubwayNameService') SearchInfoBySubwayNameService? codedata,
  }) = _SearchCode;
  factory SearchCode.fromJson(Map<String, dynamic> json) =>
      _$SearchCodeFromJson(json);
}

@freezed
class SearchInfoBySubwayNameService with _$SearchInfoBySubwayNameService {
  const factory SearchInfoBySubwayNameService({
    required List<CodeModel> row,
  }) = _SearchInfoBySubwayNameService;

  factory SearchInfoBySubwayNameService.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoBySubwayNameServiceFromJson(json);
}


@Freezed()
class CodeModel with _$CodeModel{
  const factory CodeModel({
    @Default("정보없음") @JsonKey(name: 'STATION_CD') String stationCd,
    @Default("정보없음") @JsonKey(name: 'STATION_NM') String subname,
    @Default("정보없음") @JsonKey(name: 'LINE_NUM') String line,
    @Default("정보없음") @JsonKey(name: 'FR_CODE') String code,
  }) = _CodeModel;
  factory CodeModel.fromJson(Map<String, Object?> json) => _$CodeModelFromJson(json);
}
