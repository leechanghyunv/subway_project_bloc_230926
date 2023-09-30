import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_detail_data_model.freezed.dart';
part 'sub_detail_data_model.g.dart';

@freezed
class SubDetailModel with _$SubDetailModel {
  const factory SubDetailModel({
    @Default("3728") String subNumber1,  /// 상행선일때 열차번호
    @Default("99") String subState1,  /// 상행선일때 열차상태
    @Default("NOR(S)") String subStatus1,  /// 상행선일때 일반,급행
    @Default("정보없음") String filtedDestination1, /// 상행선일때 종착역
    @Default("3728") String subNumber2, /// 하행선일때 열차번호
    @Default("99") String subState2,
    @Default("NOR(S)") String subStatus2,
    @Default("정보없음") String filtedDestination2,
  }) = _SubDetailModel;

  factory SubDetailModel.fromJson(Map<String, dynamic> json) =>
      _$SubDetailModelFromJson(json);
}