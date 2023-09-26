// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combined_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CombiendSubInfo _$$_CombiendSubInfoFromJson(Map<String, dynamic> json) =>
    _$_CombiendSubInfo(
      stateA: (json['stateA'] as List<dynamic>?)
              ?.map((e) =>
                  SubwayModelwithCode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stateB: (json['stateB'] as List<dynamic>?)
              ?.map((e) =>
                  SubwayModelwithCode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CombiendSubInfoToJson(_$_CombiendSubInfo instance) =>
    <String, dynamic>{
      'stateA': instance.stateA,
      'stateB': instance.stateB,
    };
