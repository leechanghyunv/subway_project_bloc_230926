import '../bloc_provider/store_info_bloc/a_store_bloc/store_a_bloc.dart';
import '../bloc_provider/store_info_bloc/b_store_bloc/store_b_bloc.dart';
import '../bloc_provider/store_info_bloc/store_to_table_bloc/table_info_bloc.dart';
import '../setting/exportA.dart';
import 'message.dart';

class BlocCombineButton extends StatefulWidget {
  BlocCombineButton({super.key});

  @override
  State<BlocCombineButton> createState() => _BlocCombineButtonState();
}

class _BlocCombineButtonState extends State<BlocCombineButton> {

  List<SubwayModelwithCode> storeA = [];
  List<SubwayModelwithCode> storeB = [];
  List<SubwayModel> submodel = [];
  String code = '';


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<CodeBloc, CodeState>(
            listener: (context, state) =>
                state.when(
                    initial: () => [],
                    loading: () => [],
                    error: (msg) => [],
                    loaded: (loaded){
                      setState((){
                        code = loaded;
                      },
                      );
                    },
                    ),
          ),
          BlocListener<SubInfoFilterBloc, SubInfoFilterState>(
            listener: (context, state) =>
                state.when(
                    initial: () => [],
                    loading: () => [],
                    error: (msg) => [],
                    loaded: (loaded) => setState(() => submodel = loaded)),
          ),
        ],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DialogButton(
                onPressed: (){
                  context.read<StoreABloc>().
                  add(StoreAEvent.started(code, submodel));
                  var info = submodel.first;
                  context.read<TableInfoBloc>().
                  add(TableInfoEvent.started(
                      SubwayModelwithCode(
                          subname: info.subname, engname: info.engname, code: code)
                  ),
                  );
                  savemsg('목적지 A', info.subname, info.engname);
                  setState(() {});
                },
                onLongPress: (){
                  context.read<StoreBBloc>().
                  add(StoreBEvent.started(code, submodel));
                  var info = submodel.first;
                  context.read<TableInfoBloc>().
                  add(TableInfoEvent.started(
                      SubwayModelwithCode(
                          subname: info.subname, engname: info.engname, code: code)
                  ),
                  );

                  savemsg('목적지 B', info.subname, info.engname);
                  setState(() {});
                },
                comment: 'Save'),
           DialogButton(comment: 'Adapt',
               onPressed: () => Navigator.pop(context))
          ],
        ));
  }
}