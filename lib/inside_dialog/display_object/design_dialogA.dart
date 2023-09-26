import '../../setting/exportA.dart';
import '../../setting/exportB.dart';

class DialogDesignBoxA extends StatelessWidget {
  const DialogDesignBoxA({super.key});

  @override
  Widget build(BuildContext context) {

    final username = context.read<UserNameBloc>().state;
    double sizeWidth = 2.42.w;
    double contHeight = 16.8.w;

    String line = 'Line2';

    return Container(
      height: 16.5.w,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            height: 14.5.w,
            width: 3.6.w,
            child: ColorContainer(line),
          ),
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
                Text('Date', style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                Text(
                  DateFormat('MM-dd').format(DateTime.now()),
                  style: dialogAB,
                ),
              ],
            ),
          ),
          SizedBox(
            width: sizeWidth,
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
                Text('Location', style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                BlocBuilder<TransferBloc,TransferState>(
                    builder: (context,state){
                      return state.when(
                        initial: () => Text('SEOUL', style: dialogAB),
                        loading: () => Text('SEOUL', style: dialogAB),
                        error: (msg) => Text('SEOUL', style: dialogAB),
                          loadedA: (A,B){
                            line = A.first.line_ui;
                            return Text('${A.first.subname}역',
                                style: dialogAB);
                          },
                          loadedB: (A,B){
                            line = B.first.line_ui;
                            return Text('${B.first.subname}역',
                                style: dialogAB);
                          },
                      );
                    }),
              ],
            ),
          ),
          SizedBox(
            width: sizeWidth,
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
                Text('Passenger', style: dialogAB,
                ),
                SizedBox(
                  height: sizeWidth,
                ),
                Text(username,
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
