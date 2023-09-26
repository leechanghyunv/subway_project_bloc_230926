import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'data_with_code_model.dart';
part 'combined_model.freezed.dart';
part 'combined_model.g.dart';

@freezed
class CombiendSubInfo with _$CombiendSubInfo {
  const factory CombiendSubInfo({
  @Default([]) List<SubwayModelwithCode> stateA,
  @Default([]) List<SubwayModelwithCode> stateB,
  }) = _CombiendSubInfo;

  factory CombiendSubInfo.fromJson(Map<String, dynamic> json) =>
      _$CombiendSubInfoFromJson(json);
}