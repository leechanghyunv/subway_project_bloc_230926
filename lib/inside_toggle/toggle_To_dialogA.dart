import 'package:subway_project_withbloc_230919/bloc_provider/store_info_bloc/store_to_ui_bloc/transfer_bloc.dart';
import 'package:subway_project_withbloc_230919/bloc_provider/sub_info_bloc/sub_info_provider.dart';
import '../bloc_provider/distance_bloc/distance_provider.dart';
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
               name: stateB.subname, list: stateB.subwayid.toString(),
               dest: stateA.subname, line: stateB.line
           ),
         actions: [
           DialogButton(
             onPressed: () => Navigator.pop(context),
             comment: 'Cancel',
           ),
           DialogButton(
             onPressed: (){
               context.read<TableInfoBloc>().
               add(TableInfoEvent.started(storeB.first));
               print('TransferEventA');
               context.read<TransferBloc>().
               add(TransferEvent.started(storeA, storeB));

               DistModel model = DistModel(
                 latA: stateB.lat.toString(), lngA: stateB.lng.toString(),
                 nameA: stateB.subname,
                 latB: stateA.lat.toString(), lngB: stateA.lng.toString(),
                 nameB: stateA.subname,
               );

               context.read<DistanceCubit>().callApiSubInfo(model);

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
