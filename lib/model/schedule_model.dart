import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: 'SearchSTNTimeTableByIDService') SearchSTNTimeTableByIDService? timetable,
  }) = _SearchResult;
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class SearchSTNTimeTableByIDService with _$SearchSTNTimeTableByIDService {
  const factory SearchSTNTimeTableByIDService({
    required List<TableModel>? row,
  }) = _SearchSTNTimeTableByIDService;

  factory SearchSTNTimeTableByIDService.fromJson(Map<String, dynamic> json) =>
      _$SearchSTNTimeTableByIDServiceFromJson(json);
}

@Freezed()
class TableModel with _$TableModel{
  const factory TableModel({
    @Default("정보없음") @JsonKey(name: 'STATION_CD') String stationcd,
    @Default("정보없음") @JsonKey(name: 'STATION_NM') String stationnm,
    @Default("정보없음") @JsonKey(name: 'ARRIVETIME')  String arrivetime,
    @Default("정보없음") @JsonKey(name: 'ORIGINSTATION') String originstation,
    @Default("정보없음") @JsonKey(name: 'SUBWAYSNAME') String sname,
    @Default("정보없음") @JsonKey(name: 'SUBWAYENAME') String ename,
    @Default(EXPRESS.GENERAL) @JsonKey(name: 'EXPRESS_YN') EXPRESS express,
  }) = _TableModel;
  factory TableModel.fromJson(Map<String, Object?> json) => _$TableModelFromJson(json);
}
@JsonEnum(valueField: 'initial')
enum EXPRESS {
  GENERAL('G'),
  DIRECT('D');

  final String initial;
  const EXPRESS(this.initial);
}