import 'package:get/get.dart';
import '../../setting/exportA.dart';
import '../../setting/exportB.dart';
import 'map_screen.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LatlngBloc,LatlngState>(
          builder: (context,state){
            return state.when(
              initial: () => SizedBox.shrink(),
              loading: () => SizedBox.shrink(),
              error: (err) => SizedBox.shrink(),
              loaded: (model){
                return GestureDetector(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: model.length,
                      itemBuilder: (context, index){
                        var row = model[index];
                        return Slidable(
                          startActionPane: ActionPane(
                              motion: StretchMotion(),
                              children: [
                                SlidableAction(onPressed: (context){
                                  context.read<SubInfoFilterBloc>().
                                  add(SubInfoFilterEvent.filtedList(row.subname));
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: DialogDesign(
                                              designText: 'Subway Location'),
                                          content: Container(
                                            width: double.maxFinite,
                                            height: Device.aspectRatio >= 0.5
                                                ? 100.w
                                                : 120.w,
                                            child: MapSample(row.lat, row.lng),
                                          ),
                                          actions: [
                                            Padding(
                                              padding: const EdgeInsets.all(6.0),
                                              child: DialogButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  comment: 'Done'),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                  backgroundColor: Colors.grey.shade400,
                                  foregroundColor: Colors.black,
                                  icon: Icons.location_on,
                                  label: 'Map',
                                ),
                              ]),

                          endActionPane: ActionPane(
                              motion: StretchMotion(),
                              children: [
                                SlidableAction(
                                    onPressed: (onPressed){
                                      Get.dialog(
                                        AlertDialog(
                                          content: Container(
                                            height: 89.w,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                DialogDesign(designText: 'civil complaint Box'),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: SmsContainer(),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: DialogDesignBoxC(
                                                    line: row.line_ui,
                                                    name: row.subname,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            DialogButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                comment: 'Cancel'),
                                            SizedBox(
                                              child: SmsFunction(
                                                  line: row.line_ui
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                },
                                  backgroundColor: Colors.grey.shade400,
                                  foregroundColor: Colors.black,
                                  icon: Icons.messenger_outline,
                                  label: 'help',),
                              ]),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 3),
                            child: Material(
                              child: InkWell(
                                onTap: (){
                                  context.read<ArrivalBloc>().add(ArrivalEvent.ArrivalList(row.subname, row.subwayid.toString()));
                                  context.read<CodeBloc>().add(CodeEvent.started(row.subname, row.line_ui));
                                  context.read<SubInfoFilterBloc>().add(SubInfoFilterEvent.filtedList(row.subname));
                                  context.read<SubInfoFilterBlocB>().add(SubInfoFilterEvent.filtedList(row.subname));
                                  Get.dialog(
                                    AlertDialog(
                                      content: SwitchDialogC(name: row.subname,line: row.line),
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
                                    ),
                                  );
                                },
                                child: ListTile(
                                  selectedColor: Colors.grey[300],
                                  title: Row(
                                    children: [
                                      Text('${row.subname}',
                                        style: TextStyle(
                                            fontSize: 3.3.w,
                                            fontWeight:FontWeight.bold,
                                            color: Colors.black,
                                            overflow: TextOverflow.ellipsis
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text('${row.km?.toStringAsFixed(0)}m',
                                    style: TextStyle(
                                        fontSize: 3.3.w,
                                        fontWeight:FontWeight.bold,
                                        color: Colors.black,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ));
                      }),
                );
              },
                );
          }),
    );
  }
}
