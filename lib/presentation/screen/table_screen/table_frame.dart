import '../../../setting/exportA.dart';

class TimeTable extends StatelessWidget {

  final Widget? childA;
  final Widget? childB;

  const TimeTable({super.key, this.childA, this.childB});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.w,
          height: 90.h,
          alignment: Alignment.center,
          child: childA,
        ),
        Container(
          width: 50.w,
          height: 90.h,
          alignment: Alignment.center,
          child: childB,
        ),
      ],
    );
  }
}