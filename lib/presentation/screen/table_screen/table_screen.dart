import 'package:subway_project_withbloc_230919/presentation/screen/table_screen/table_frame.dart';

import '../../../setting/exportA.dart';
import '../../../setting/exportB.dart';

class TableScreen extends StatefulWidget {
  final subName;
  final engName;

  const TableScreen({super.key, this.subName, this.engName});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final ScrollController _scrollControllerA = ScrollController();
  final ScrollController _scrollControllerB = ScrollController();

  @override
  void initState() {
    super.initState();

    tablemsg(widget.engName,widget.subName);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutTable(
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x, Alignment.bottomRight.y - 0.2),
            child: FloatingActionButton.small(
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              elevation: 0.1,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_return,
                color: Colors.white,
                size: 6.w,
              ),
            ),
          ),

          Align(
            alignment: Alignment(
                Alignment.bottomRight.x,
                Alignment.bottomRight.y
            ),
            child: FloatingActionButton.small(
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              elevation: 0.1,
              onPressed: (){
                // tableLast(widget.subName);
                final double endA = _scrollControllerA.position.maxScrollExtent;
                final double endB = _scrollControllerB.position.maxScrollExtent;
                _scrollControllerA.animateTo(
                    endA,duration: const Duration(milliseconds: 800),curve: Curves.easeIn);
                _scrollControllerB.animateTo(
                    endB,duration: const Duration(milliseconds: 800),curve: Curves.easeIn);
              },
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 6.w,
              ),
            ),
          ),

        ],
      ),
      child: BlocConsumer<ScaduleBloc,ScaduleState>(
        listener: (context,state){
        },
        builder: (context,state){
          return state.when(
            initial: () => TableStateBox('initial'),
            loading: () => TableLoadingBox(),
            error: (err) => TableStateBox('Error : ${err.toString()}'),
            loaded: (timeA, timeB){
              List<TableModel> subTableA = List.from(timeA);
              List<TableModel> subTableB = List.from(timeB);
              subTableA.sort((a,b)=>a.arrivetime.compareTo(b.arrivetime));
              subTableB.sort((a,b)=>a.arrivetime.compareTo(b.arrivetime));
              var filtedA = subTableA.where((e) => e.arrivetime != '00:00:00').toList();
              var filtedB = subTableB.where((e) => e.arrivetime != '00:00:00').toList();

              return TimeTable(
                childA: ListView.builder(
                    controller: _scrollControllerA,
                    itemCount: filtedA.length,
                    itemBuilder: (context, index){
                      var row = filtedA[index];
                      return TableList(
                          row.sname,row.ename, row.express.name,row.arrivetime);
                    }),

                childB: ListView.builder(
                    controller: _scrollControllerB,
                    itemCount: filtedB.length,
                    itemBuilder: (context, index){
                      var row = filtedB[index];
                      return TableList(
                          row.sname,row.ename, row.express.name,row.arrivetime);
                    }),
              );

            },);
        },
      ),



    );
  }
}

Widget TableList(
    String sname, String ename, String express, String arrivetime) =>
    ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                      text: '$sname > $ename행 \n',
                      style: tablecommon,
                    ),
                    TextSpan(
                      text: express == 'GENERAL'
                          ? '$express(일반)'
                          : '$express(급행)',
                      style: tableexstyle(express),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
      trailing: Text(
        arrivetime.substring(0,5),
        style: commonmin,
      ),
    );


