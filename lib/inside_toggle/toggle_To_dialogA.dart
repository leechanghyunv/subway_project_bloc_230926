import 'package:subway_project_withbloc_230919/bloc_provider/store_info_bloc/store_to_ui_bloc/transfer_bloc.dart';

import '../bloc_provider/store_info_bloc/store_to_table_bloc/table_info_bloc.dart';
import '../setting/exportA.dart';

class ToggleToDialogA extends StatefulWidget {
  const ToggleToDialogA({super.key});

  @override
  State<ToggleToDialogA> createState() => _ToggleToDialogState();
}

class _ToggleToDialogState extends State<ToggleToDialogA> {


  @override
  Widget build(BuildContext context) {
    final storeA = context.watch<StoreABloc>().state;
    final storeB = context.watch<StoreBBloc>().state;
     if (storeA.isNotEmpty && storeB.isNotEmpty){
       var stateA = storeA.first;
       var stateB = storeB.first;
       return AlertDialog(
           content: SwitchDialogA(
               name: stateB.subname,
               list: stateB.subwayid.toString(),
               dest: stateA.subname,
               line: stateB.line),
         actions: [
           DialogButton(
             onPressed: () => Navigator.pop(context),
             comment: 'Cancel',
           ),
           DialogButton(
             onPressed: (){
               context.read<TableInfoBloc>().
               add(TableInfoEvent.started(storeB.first));
               context.read<TransferBloc>().add(TransferEvent.switchA(storeA, storeB));

               print(storeA);
               Navigator.pop(context);
             },
             comment: 'Adapt',
           ),
         ],
       );
     } else {
       return AlertDialog(
         content: Container(
           height: 90.8.w,
           width: double.maxFinite,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               DialogDesign(
                 designText: 'RealTime Arrival',
               ),
               LoadingBox('Save 버튼을 통해\n값을 저장해주세요'),
             ],
           ),
         ),
       );
     }


  }
}
