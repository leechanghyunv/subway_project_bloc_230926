import 'package:get/get.dart';
import '../../../setting/exportA.dart';

class TransferIcon extends StatelessWidget {
  const TransferIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final stateT = context.watch<StoreTBloc>().state;
    return IconButton(
        onPressed: () {
          if (stateT.isNotEmpty) {
            Get.dialog(
              AlertDialog(
                content: Container(
                  height: 90.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DialogDesign(
                        designText: 'RealTime Arrival',
                      ),
                      // BlocConsumer(builder: builder, listener: listener),
                    ],
                  ),
                ),
              ),
            );
          } else if (stateT.isEmpty) {
            Get.dialog(
              AlertDialog(
                content: Container(
                  height: 90.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DialogDesign(
                        designText: 'RealTime Arrival',
                      ),
                      Container(),
                    ],
                  ),
                ),
              ),
            );
          }
        },
        icon: Icon(Icons.cached_rounded),
    );
  }
}
