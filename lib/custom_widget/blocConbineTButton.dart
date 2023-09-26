import '../setting/exportA.dart';
import 'message.dart';

class BlocCombineTButton extends StatefulWidget {

  final subname;
  final engname;
  final subline;

  const BlocCombineTButton({super.key, this.subname, this.subline, this.engname});

  @override
  State<BlocCombineTButton> createState() => _BlocCombineTButtonState();
}

class _BlocCombineTButtonState extends State<BlocCombineTButton> {

  List<SubwayModelwithCode> storeT = [];
  List<SubwayModel> submodel = [];
  String code = '';

  @override
  void initState() {
    super.initState();
    context.read<CodeBloc?>()?.add(
        CodeEvent.started(widget.subname,widget.subline));
    context.read<SubInfoFilterBloc?>()?.add(
        SubInfoFilterEvent.filtedAfter(widget.subname,widget.subline));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<CodeBloc,CodeState>(
              listener: (context,state) =>
          state.when(
            initial: () => [],
            loading: () => [],
            error: (err) => [],
            loaded: (loaded) =>
                setState(() => code = loaded),
              )),
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
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.
                    all(Colors.grey[300]),
                  ),
                  onPressed: (){
                    context.read<StoreTBloc>().
                    add(StoreTEvent.started(code, submodel));
                    savemsg('목적지 T', widget.subname, widget.engname);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Done',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
