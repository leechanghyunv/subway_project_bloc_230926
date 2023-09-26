// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sk_telecom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkTelecom_Model _$$_SkTelecom_ModelFromJson(Map<String, dynamic> json) =>
    _$_SkTelecom_Model(
      subroute: json['subroute'] ?? '정보없음',
      subroutelist: json['subroutelist'] ?? '정보없음',
      updown: json['updown'] ?? 0000,
      route: json['route'] ?? '정보없음',
      routelist: json['routelist'] ?? '정보없음',
      time: json['time'] ?? 0000,
      fare: json['fare'] ?? 0000,
    );

Map<String, dynamic> _$$_SkTelecom_ModelToJson(_$_SkTelecom_Model instance) =>
    <String, dynamic>{
      'subroute': instance.subroute,
      'subroutelist': instance.subroutelist,
      'updown': instance.updown,
      'route': instance.route,
      'routelist': instance.routelist,
      'time': instance.time,
      'fare': instance.fare,
    };
