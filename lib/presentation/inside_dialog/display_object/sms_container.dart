import '../../../setting/exportA.dart';
import '../../../setting/exportB.dart';

class SmsContainer extends StatelessWidget {
  const SmsContainer({super.key});

  @override
  Widget build(BuildContext context) {

    final textSize = 3.63.w;
    final textSize2 = 3.35.w;

     commonTextStyle(double size) => TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    return Container(
      height: 46.w,
      width: 62.6.w,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(sms1, style: commonTextStyle(textSize)),
          Text(sms2, style: commonTextStyle(textSize2)),
        ],
      ),
    );
  }
}
