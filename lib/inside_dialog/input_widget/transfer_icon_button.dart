import 'package:get/get.dart';
import '../../setting/exportA.dart';

class TransferIcon extends StatelessWidget {
  const TransferIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreTBloc,List<SubwayModelwithCode>>(
        builder: (context,state){
          var info = state.first;
        return IconButton(
            onPressed: () async {
              if(state.isNotEmpty){
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
                          Container(
                            color: Colors.grey[100],
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }else if(state.isEmpty){
                Get.dialog(
                  AlertDialog(),
                );
              }
        },
            icon: Icon(Icons.cached_rounded));
        }
        );
  }
}
