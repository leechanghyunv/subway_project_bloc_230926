import '../../setting/exportA.dart';

class InsideAssets {
  Future<List<SubwayModel>> fetchInside () async {
    final  jsonData = await rootBundle.loadString('assets/test.json');
    final List<dynamic> data = jsonDecode(jsonData)['subwaydata'];
    return data.map((e) => SubwayModel.fromJson(e)).toList();
  }
}