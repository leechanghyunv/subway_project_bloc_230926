import '../../../setting/exportA.dart';
import '../../../setting/exportB.dart';

class DialogDesignBoxB extends StatelessWidget {
  const DialogDesignBoxB({super.key});

  @override
  Widget build(BuildContext context) {

    double sizeWidth = 2.42.w;
    double contHeight = 16.8.w;

    final username = context.read<UserNameBloc>().state;

    return Container(
      height: 16.5.w,
      child: Row(
        children: [
          BlocContainerA(),
          SizedBox(
            width: sizeWidth,
          ),
          Container(
            height: contHeight,
            width: 12.5.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('Date', style: dialogAB),
                SizedBox(
                  height: sizeWidth,
                ),
                Text(DateFormat('MM-dd').format(DateTime.now()),
                  style: dialogAB),
              ],
            ),
          ),
          SizedBox(
            height: sizeWidth,
          ),
          Container(
            height: 17.w,
            width: 17.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('Transfer', style: dialogAB),
                SizedBox(
                  height: sizeWidth,
                ),
                BlocContainerB(),
              ],
            ),
          ),
          SizedBox(
            height: sizeWidth,
          ),
          Container(
            height: 17.w,
            width: 22.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeWidth,
                ),
                Text('Passenger', style: dialogAB),
                SizedBox(
                  height: sizeWidth,
                ),
                Text(
                    username, style: dialogAB,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

Widget BlocContainerA() => BlocBuilder<
    StoreTBloc, List<SubwayModelwithCode>>(
        builder: (context, state) {
          if(state.isNotEmpty){
            var info = state.first;
            return SizedBox(
              height: 14.5.w,
              width: 3.6.w,
              child: ColorContainer(info.line_ui),
            );
          }
          return SizedBox(
            height: 14.5.w,
            width: 3.6.w,
            child: ColorContainer('Line2'),
          );
    });

Widget BlocContainerB() => BlocBuilder<
    StoreTBloc, List<SubwayModelwithCode>>(
    builder: (context, state) {
      if(state.isNotEmpty){
        var info = state.first;
        var name = info.subname;
        final filtered = name.replaceAll(RegExp(r'\([^()]*\)'), '');
        return
          Text('${filtered}역',
              style: dialogAB,
              overflow: TextOverflow.ellipsis);
      }
      return Text('');
    });