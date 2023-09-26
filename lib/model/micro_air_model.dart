import 'package:freezed_annotation/freezed_annotation.dart';

part 'micro_air_model.freezed.dart';
part 'micro_air_model.g.dart';

@freezed
class SearchAir with _$SearchAir {
  const factory SearchAir({
    @JsonKey(name: 'RealtimeCityAir') RealtimeCityAir? airdata,
  }) = _SearchAir;

  factory SearchAir.fromJson(Map<String, dynamic> json) =>
      _$SearchAirFromJson(json);
}

@freezed
class RealtimeCityAir with _$RealtimeCityAir {
  const factory RealtimeCityAir({
    required List<DustModel>? row,
  }) = _RealtimeCityAir;

  factory RealtimeCityAir.fromJson(Map<String, dynamic> json) =>
      _$RealtimeCityAirFromJson(json);
}


@Freezed()
class DustModel with _$DustModel{
  const factory DustModel({
    @Default(0.0) @JsonKey(name: 'PM10') double pm10,
    @Default(0.0) @JsonKey(name: 'PM25') double pm25,
    @Default("정보없음") @JsonKey(name: 'IDEX_NM') String result,
    @Default("정보없음") @JsonKey(name: 'MSRSTE_NM') String region,
  }) = _DustModel;

  factory DustModel.fromJson(Map<String, Object?> json) => _$DustModelFromJson(json);
}

@Freezed()
class DustInfo with _$DustInfo{
  const factory DustInfo({
    @Default('Line00') String barLevel,
    @Default('정보없음') String commnet,
  }) = _DustInfo;
}