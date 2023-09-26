import '../setting/exportA.dart';

Widget LoadingBox(String text) => Container(
  color: Colors.grey[200],
  height: 40.w,
  alignment: Alignment.center,
  child:  TextFrame(comment: text),
);

const spinkit = SpinKitWave(
  color: Colors.grey,
  size: 25.0,
);

Widget TableLoadingBox() => Container(
  color: Colors.grey[200],
  width: 100.w,
  height: 90.h,
  alignment: Alignment.center,
  child: TextFrame(comment: 'Loading'),
);

Widget TableStateBox(String text) => Container(
  color: Colors.grey[200],
  width: 100.w,
  height: 90.h,
  alignment: Alignment.center,
  child: TextFrame(comment: text),
);