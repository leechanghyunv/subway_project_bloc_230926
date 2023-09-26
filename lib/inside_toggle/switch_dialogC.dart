import '../custom_widget/common.dart';
import '../setting/exportA.dart';


class SwitchDialogC extends StatefulWidget {

  final name;
  final line;

   SwitchDialogC({super.key, this.name, this.line});

  @override
  State<SwitchDialogC> createState() => _SwitchDialogCState();
}

class _SwitchDialogCState extends State<SwitchDialogC> {

  late String subline = '';

  @override
  void initState() {
    super.initState();
    subline = widget.line;
  }


  @override
  Widget build(BuildContext context) {
    double textSize = 3.6.w;
    return Container(
      height: Device.aspectRatio >= 0.5 ? 80.w : 91.w,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogDesign(
            designText: 'RealTime Arrival',
          ),
          Container(
            color: Colors.grey[100],
            width: double.maxFinite,
            child: BlocBuilder<ArrivalBloc,ArrivalState>(
                builder: (context,state){
                  return state.when(
                    initial: () => TextFrame(comment: 'initial'),
                    loading: () => TextFrame(comment: 'loading'),
                    error: (msg) => TextFrame(comment: msg),
                    loaded: (arrival,up1,up2,down1,down2){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFrame(
                            comment: '\n${subline} ${widget.name}역\n',
                          ),
                          TextFrame(comment: up1.toString()),
                          TextFrame(comment: '${up2.toString()}\n'),
                          TextFrame(comment: down1.toString()),
                          TextFrame(comment: '${down2.toString()}\n'),
                        ],
                      );
                    },
                  );
                }),
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: BlocBuilder<WeatherBloc,WeatherState>(
                builder: (context,state){
                  return state.when(
                    initial: () => TextFrame(comment: 'initial'),
                    loading: (msg) => TextFrame(comment: msg),
                    err: (err) => TextFrame(comment: err),
                    loaded: ((weather, main, iconwidget){
                      return Row(
                        children: [
                          iconwidget,
                          SizedBox(width: 5,),
                          Container(
                            color: Colors.white,
                            child: Text(weather.first.description,
                              style: TextStyle(
                                fontSize: textSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Expanded(child: Text('')),
                          BlocBuilder<SubInfoFilterBlocB,SubInfoFilterState>(
                              builder: (context,state){
                                return state.when(
                                    initial: () => SizedBox.shrink(),
                                    loading: () => SizedBox.shrink(),
                                    loaded: (info){
                                      return PopupMenuButton(
                                          itemBuilder: (BuildContext context){
                                        return info.map((e){
                                          return PopupMenuItem(
                                              value: e.line_ui,
                                              child: TextFrame(comment: e.line_ui)
                                          );
                                        }).toList();
                                      },
                                        onSelected: (value){
                                            subline = switchUiLine(value);
                                            var line = switchLine(value);
                                            context.read<ArrivalBloc>().
                                            add(ArrivalEvent.ArrivalList(widget.name, line));
                                        },
                                      );
                                    },

                                    error: (msg) => SizedBox.shrink());
                              }),

                        ],
                      );
                    }),
                  );
                }
                ),
          ),

        ],
      ),
    );
  }
}

