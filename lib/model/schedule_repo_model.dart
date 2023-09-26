
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subway_project_withbloc_230919/model/schedule_model.dart';

part 'schedule_repo_model.freezed.dart';
part 'schedule_repo_model.g.dart';

@freezed
class TableProviderModel with _$TableProviderModel {
  const factory TableProviderModel({
    required List<TableModel> tableA,
    required List<TableModel> tableB,
  }) = _TableProviderModel;

  factory TableProviderModel.fromJson(Map<String, dynamic> json) =>
      _$TableProviderModelFromJson(json);
}