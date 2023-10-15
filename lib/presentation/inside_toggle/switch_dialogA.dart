import '../../../setting/exportA.dart';
import '../../../setting/exportB.dart';
import '../../model/sub_detail_data_model.dart';

class SwitchDialogA extends StatefulWidget {
  final String name;
  final String list;
  final String dest;
  final String line;

  const SwitchDialogA({super.key,
    required this.name,
    required this.list,
    required this.dest,
    required this.line});

  @override
  State<SwitchDialogA> createState() => _SwitchDialogAState();
}

class _SwitchDialogAState extends State<SwitchDialogA> {

  @override
  void initState() {
    super.initState();
    context.read<ArrivalBloc>().
    add(ArrivalEvent.ArrivalList(widget.name, widget.list));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.8.w,
      width: double.maxFinite,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogDesign(
          designText: 'RealTime Arrival',
        ),
          BlocBuilder<ArrivalBloc,ArrivalState>(
              builder: (context,state){
                return state.when(
                  initial: () => LoadingBox('initial'),
                  loading: () => LoadingBox('loading'),
                  error: (msg) => LoadingBox(msg),
                  loaded: (arrival,up1,up2,down1,down2){

                    var updnLine1 = ['상행', '내선'], updnLine2 = ['하행', '외선'];
                    var arrivalA = arrival.where((e) => updnLine1.contains(e.updnLine));
                    var arrivalB = arrival.where((e) => updnLine2.contains(e.updnLine));

                    var subNumber1 = arrivalA.map((e) => e.btrainNo).first;
                    var subState1 = arrivalA.map((e) => e.arvlCd).first;
                    var subStatus1 = arrivalA.map((e) => e.btrainSttus).first;
                    var destination1 = arrivalA.map((e) => e.trainLineNm).first;
                    String filtedDestination1 = destination1.split(" - ")[0];

                    var subNumber2 = arrivalB.map((e) => e.btrainNo).first;
                    var subState2 = arrivalB.map((e) => e.arvlCd).first;
                    var subStatus2 = arrivalB.map((e) => e.btrainSttus).first;
                    var destination2 = arrivalB.map((e) => e.trainLineNm).first;
                    String filtedDestination2 = destination2.split(" - ")[0];

                    context.read<SubwayDetaInfo>().getInfo(SubDetailModel(
                          subNumber1: subNumber1, subState1: subState1,
                          subStatus1: subStatus1, subNumber2: subNumber2,
                          filtedDestination1: filtedDestination1,
                          subState2: subState2, subStatus2: subStatus2,
                          filtedDestination2: filtedDestination2));
                    return Container(
                      color: Colors.grey[100],
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFrame(comment: '\n${widget.line} ${widget.name}역 -> ${widget.dest}역\n',),
                          TextFrame(comment: up1.toString()),
                          TextFrame(comment: '${up2.toString()}\n'),
                          TextFrame(comment: down1.toString()),
                          TextFrame(comment: '${down2.toString()}\n'),
                        ],
                      ),
                    );
                  },
                );
          }),

          BlocBuilder<WeatherBloc,WeatherState>(
              builder: (context,state){
                return Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: state.when(
                    initial: () => const Row(children: [TextFrame(comment: 'initial.....')]),
                    loading: (msg) => Row(children: [TextFrame(comment: msg)]),
                    err: (msg) => Row(children: [TextFrame(comment: msg)]),
                    loaded: (weather, main, widget){
                      return Row(
                        children: [
                          widget,
                          TextFrame(comment: weather.first.description),
                          const Expanded(child: Text('')),
                           TransferIcon(),
                        ],
                      );
                    }),

                );
              }
              ),

        ],
      ),
    );
  }
}
