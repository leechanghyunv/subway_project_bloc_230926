import '../screen/other_screen/dialog_screen.dart';
import '../setting/exportA.dart';
import '../setting/exportB.dart';


List<Color> kDefaultRainbowColors2 = [
  Colors.grey.shade600,
  Colors.grey.shade600,
  Colors.grey.shade600,
];

class SwitchDialogB extends StatefulWidget {

  SwitchDialogB({super.key, required this.subwayList});

  final List<String> subwayList;

  @override
  State<SwitchDialogB> createState() => _SwitchDialogBState();
}

class _SwitchDialogBState extends State<SwitchDialogB> {

  SharedPreManager sharedPreManager = SharedPreManager();

  String dropdownvalue = 'Line2';


  @override
  void initState() {
    super.initState();
    context.read<LatlngBloc>().
    add(LatlngEvent.started(dropdownvalue));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      height: Device.aspectRatio >= 0.5 ? 97.w : 110.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DialogDesign(designText: 'Location Tracking'),
              Expanded(child: Text('')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            height: Device.aspectRatio >= 0.5 ? 51.w : 63.w,
            child: DialogPage(),
          ),
          Container(
            height: 8.5.w,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    color: Colors.grey[100],
                    height: 8.45.w,
                  ),
                ),
                BlocListener<MicroAirBloc,MicroAirState>(
                  listener: (context,state){
                    state.when(
                        initial: (){},
                        loading: (msg){},
                        loaded: (dustModel, level, dustInfo, color){
                          setState(() {
                            dropdownvalue = dustInfo.barLevel.toString();
                          });
                        },
                        err: (err){});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[300],
                    width: 18.1.w,
                    height: 8.45.w,
                    child: DropdownButton(
                      value: dropdownvalue,
                        dropdownColor: Colors.grey[200],
                        underline: Container(
                          alignment: Alignment.center,
                          color: Colors.grey[200],
                        ),
                        icon: SizedBox.shrink(),
                        items: menulist
                            .map<DropdownMenuItem<dynamic>>((dynamic value){
                          return DropdownMenuItem<dynamic>(
                            value: value,
                            child: Text(value,
                              style: TextStyle(
                                  fontSize: 3.62.w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (val){
                        setState(() {
                          dropdownvalue = val;
                          context.read<LatlngBloc>().add(LatlngEvent.started(val));
                        });

                        }),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 9.w,
              color: Colors.white,
              alignment: Alignment.center,
              width: double.maxFinite,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.subwayList.length,
                  itemBuilder: (context,index){
                    var row = widget.subwayList[index];
                    return Padding(
                      padding: const EdgeInsets.all(3.5),
                      child: ChoiceChip(
                          label: TextFrame(comment: row),
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.black),
                          selected: true,
                        onSelected: (isSelected){
                          context.read<SubInfoFilterBloc>().
                          add(SubInfoFilterEvent.filtedList(row));
                          context.read<SubInfoFilterBlocB>().
                          add(SubInfoFilterEvent.filtedList(row));
                            showDialog(
                                context: context,
                                builder: (context){
                              return AlertDialog(
                                content: BlocBuilder<SubInfoFilterBlocB,SubInfoFilterState>(
                                    builder: (context,state){
                                      return state.when(
                                          initial: () => SwitchDialogC(line: dropdownvalue, name: row),
                                          loading: () => SwitchDialogC(line: dropdownvalue, name: row),
                                          loaded: (loaded) => SwitchDialogC(line: loaded.first.line, name: row),
                                          error: (msg) => SwitchDialogC(line: dropdownvalue, name: row));
                                    }),
                                actions: [
                                  DialogButton(
                                    comment: 'Cencel',
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                  DialogButton(
                                    comment: 'Select',
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            });

                        },

                      ),
                    );
                  }),
            ),
          ),

        ],
      ),
    );
  }

  List<String> menulist = [
    'Line1', 'Line2', 'Line3', 'Line4', 'Line5', 'Line6', 'Line7', 'Line8', 'Line9', '신분당', '수인분당', '경의선', '우이신설', '공항철도',
  ];


}
