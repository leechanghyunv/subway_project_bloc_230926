// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubwayModel _$$_SubwayModelFromJson(Map<String, dynamic> json) =>
    _$_SubwayModel(
      subname: json['subname'] as String? ?? '정보없음',
      engname: json['engname'] as String? ?? '정보없음',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
      line_ui: json['line_ui'] as String? ?? '정보없음',
      subwayid: json['subwayid'] as int? ?? 0,
      line: json['line'] as String? ?? '정보없음',
      heading: json['heading'] as String? ?? '정보없음',
      isSelected: json['isSelected'] as bool? ?? false,
      km: json['km'] as num? ?? 0.0,
    );

Map<String, dynamic> _$$_SubwayModelToJson(_$_SubwayModel instance) =>
    <String, dynamic>{
      'subname': instance.subname,
      'engname': instance.engname,
      'lat': instance.lat,
      'lng': instance.lng,
      'line_ui': instance.line_ui,
      'subwayid': instance.subwayid,
      'line': instance.line,
      'heading': instance.heading,
      'isSelected': instance.isSelected,
      'km': instance.km,
    };
