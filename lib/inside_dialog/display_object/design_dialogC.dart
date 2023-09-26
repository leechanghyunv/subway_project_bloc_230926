import '../../custom_widget/common.dart';
import '../../setting/exportA.dart';

class DialogDesignBoxC extends StatelessWidget {

  final String line;
  final String name;

  const DialogDesignBoxC({super.key, required this.line, required this.name});

  @override
  Widget build(BuildContext context) {
    final filtered = name.replaceAll(RegExp(r'\([^()]*\)'), '');

    double sizeWidth = 2.42.w;
    double sizeWidth2 = 1.8.w;
    double contHeight = 17.w;

    return Container(
      height: 14.5.w,
      child: Row(
        children: [
          SizedBox(
            height: 14.5.w,
            width: 3.6.w,
            child: ColorContainer(line),
          ),
          SizedBox(
            width: 1.8.w,
          ),
          Container(
            height: contHeight,
            width: 13.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('LineN',
                  style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                Text(
                  '${line}',
                  style: dialogAB,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Container(
            height: contHeight,
            width: 16.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('Location', style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                Text('${filtered}역',
                    style: dialogAB,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          SizedBox(
            width: sizeWidth2,
          ),
          Container(
            height: contHeight,
            width: 12.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('SMS Call', style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                Text( line == 'Line1' ? '1577-1234'
                    : line == 'Line2' ? '1577-1234'
                    : line == 'Line3' ? '1577-1234'
                    : line == 'Line4' ? '1577-1234'
                    : line == 'Line5' ? '1577-1234'
                    : line == 'Line6' ? '1577-1234'
                    : line == 'Line7' ? '1577-1234'
                    : line == 'Line8' ? '1577-1234'
                    : line == 'Line9' ? '1577-4009'
                    : line == '신분당' ? '(031)8018-7777'
                    : '1544-7769',
                    style: dialogAB,
                    overflow: TextOverflow.ellipsis)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
