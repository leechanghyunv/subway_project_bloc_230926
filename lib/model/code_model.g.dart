// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchCode _$$_SearchCodeFromJson(Map<String, dynamic> json) =>
    _$_SearchCode(
      codedata: json['SearchInfoBySubwayNameService'] == null
          ? null
          : SearchInfoBySubwayNameService.fromJson(
              json['SearchInfoBySubwayNameService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchCodeToJson(_$_SearchCode instance) =>
    <String, dynamic>{
      'SearchInfoBySubwayNameService': instance.codedata,
    };

_$_SearchInfoBySubwayNameService _$$_SearchInfoBySubwayNameServiceFromJson(
        Map<String, dynamic> json) =>
    _$_SearchInfoBySubwayNameService(
      row: (json['row'] as List<dynamic>)
          .map((e) => CodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchInfoBySubwayNameServiceToJson(
        _$_SearchInfoBySubwayNameService instance) =>
    <String, dynamic>{
      'row': instance.row,
    };

_$_CodeModel _$$_CodeModelFromJson(Map<String, dynamic> json) => _$_CodeModel(
      stationCd: json['STATION_CD'] as String? ?? "정보없음",
      subname: json['STATION_NM'] as String? ?? "정보없음",
      line: json['LINE_NUM'] as String? ?? "정보없음",
      code: json['FR_CODE'] as String? ?? "정보없음",
    );

Map<String, dynamic> _$$_CodeModelToJson(_$_CodeModel instance) =>
    <String, dynamic>{
      'STATION_CD': instance.stationCd,
      'STATION_NM': instance.subname,
      'LINE_NUM': instance.line,
      'FR_CODE': instance.code,
    };
