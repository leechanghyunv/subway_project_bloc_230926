import '../setting/exportA.dart';

class TextFrame extends StatelessWidget {

  final TextOverflow? overflow;
  final String comment;
  final Color? color;

  const TextFrame(
      {super.key, required this.comment, this.overflow, this.color});

  @override
  Widget build(BuildContext context) {
    final filtered = comment.replaceAll(RegExp(r'\([^()]*\)'), '');
    final commonTextStyle = TextStyle(
      fontSize: 3.7.w,
      fontWeight: FontWeight.bold,
      color: color,
    );

    if (comment.contains('급행') || comment.contains('진입')) {
      return BlinkText(
        filtered,
        style: commonTextStyle,
        beginColor: Colors.black,
        duration: Duration(milliseconds: 500), /// 깜빡이는 간격
        times: 2, /// 깜빡이는 횟수
      );
    } else {
      return Text(
        filtered,
        style: commonTextStyle,
      );
    }
  }
}