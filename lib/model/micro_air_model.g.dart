// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'micro_air_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchAir _$$_SearchAirFromJson(Map<String, dynamic> json) => _$_SearchAir(
      airdata: json['RealtimeCityAir'] == null
          ? null
          : RealtimeCityAir.fromJson(
              json['RealtimeCityAir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchAirToJson(_$_SearchAir instance) =>
    <String, dynamic>{
      'RealtimeCityAir': instance.airdata,
    };

_$_RealtimeCityAir _$$_RealtimeCityAirFromJson(Map<String, dynamic> json) =>
    _$_RealtimeCityAir(
      row: (json['row'] as List<dynamic>?)
          ?.map((e) => DustModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RealtimeCityAirToJson(_$_RealtimeCityAir instance) =>
    <String, dynamic>{
      'row': instance.row,
    };

_$_DustModel _$$_DustModelFromJson(Map<String, dynamic> json) => _$_DustModel(
      pm10: (json['PM10'] as num?)?.toDouble() ?? 0.0,
      pm25: (json['PM25'] as num?)?.toDouble() ?? 0.0,
      result: json['IDEX_NM'] as String? ?? "정보없음",
      region: json['MSRSTE_NM'] as String? ?? "정보없음",
    );

Map<String, dynamic> _$$_DustModelToJson(_$_DustModel instance) =>
    <String, dynamic>{
      'PM10': instance.pm10,
      'PM25': instance.pm25,
      'IDEX_NM': instance.result,
      'MSRSTE_NM': instance.region,
    };
