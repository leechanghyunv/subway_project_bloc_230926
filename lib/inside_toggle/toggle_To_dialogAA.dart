import '../bloc_provider/store_info_bloc/store_to_table_bloc/table_info_bloc.dart';
import '../bloc_provider/store_info_bloc/store_to_ui_bloc/transfer_bloc.dart';
import '../setting/exportA.dart';

class ToggleToDialogAA extends StatefulWidget {
  const ToggleToDialogAA({super.key});

  @override
  State<ToggleToDialogAA> createState() => _ToggleToDialogAAState();
}

class _ToggleToDialogAAState extends State<ToggleToDialogAA> {
  @override
  Widget build(BuildContext context) {
    final storeA = context.watch<StoreABloc>().state;
    final storeB = context.watch<StoreBBloc>().state;
    if (storeA.isNotEmpty && storeB.isNotEmpty){
      var stateA = storeA.first;
      var stateB = storeB.first;
      return AlertDialog(
          content: SwitchDialogA(
              name: stateA.subname,
              list: stateA.subwayid.toString(),
              dest: stateB.subname,
              line: stateA.line),
        actions: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            comment: 'Cancel',
          ),
          DialogButton(
            onPressed: (){
              context.read<TableInfoBloc>().
              add(TableInfoEvent.started(storeA.first));

              context.read<TransferBloc>().
              add(TransferEvent.switchB(storeB, storeA));
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
