import '../../setting/exportA.dart';

class LinePickerB extends StatelessWidget {

  final String value;

   LinePickerB({super.key, required this.value});

  late String lineNumber = '';

  List<SubwayModel> blocList = [];

  @override
  Widget build(BuildContext context) {
    final filtedBloc = BlocProvider.of<SubInfoFilterBloc>(context);
    filtedBloc.state.when(loaded: (loaded) => blocList = loaded.toList(),
        initial: () => ['initial'], loading: () => ['loading'], error: (msg) => ['msg']
    );
    return AlertDialog(
      content: StatefulBuilder(
          builder: (__, StateSetter setState){
            if(blocList.isNotEmpty){
              return Container(
                height: blocList.length == 1 ? 170 : blocList.length == 2 ? 220
                    : blocList.length == 3 ? 270 : blocList.length == 4 ? 320
                    : blocList.length == 5 ? 370 : 420,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            blocList.length, (index){
                          return CheckboxListTile(
                              value: blocList[index].isSelected,
                              activeColor: Colors.grey[600],
                              title: Row(
                                children: [
                                  IconColor(blocList[index].line_ui),
                                  SizedBox(width: 10,),
                                  Text(blocList[index].line_ui,style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                              subtitle: subName(blocList[index].subwayid.toString()),
                              onChanged: (value){
                                if(value != null){
                                  blocList = List.from(blocList.map((e){
                                    if(e.line_ui == blocList[index].line_ui){
                                      lineNumber = blocList[index].line_ui;
                                      return e.copyWith(isSelected: true);
                                    } else {
                                      return e;
                                    }
                                  }));
                                  setState(() {});
                                }
                              });
                        }),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
      actions: [
        BlocCombineTButton(
          subname: value,
          subline: lineNumber,
          engname: blocList.first.engname),
      ],
    );
  }

  Widget IconColor(String line) =>
      Icon(Icons.square,
        color: switch(line){
          'Line1' => Color(0xff2a4193), 'Line2' => Color(0xff027a31),
          'Line3' => Color(0xffd75e02), 'Line4' => Color(0xff028bb9),
          'Line5' => Color(0xff9637b6), 'Line6' => Color(0xff885408),
          'Line7' => Color(0xff525d02), 'Line8' => Color(0xfff62d37),
          'Line9' => Color(0xff916a2a), '서해' => Color(0xff8FC31F),
          '공항철도' => Color(0xff0090D2), '경의선' => Color(0xff77C4A3),
          '경춘선' => Color(0xff0C8E72), '수인분당' => Color(0xFFE7E727),
          '신분당' => Color(0xffD4003B), '경강선' => Color(0xff003DA5),
          '인천1선' => Color(0xff7CA8D5), '인천2선' => Color(0xffED8B00),
          '에버라인' => Color(0xff6FB245), '의정부' => Color(0xffFDA600),
          '우이신설' => Color(0xffB7C452), '김포골드' => Color(0xffA17800),
          '신림' => Color(0xff6789CA),
          _ => Colors.black,
        },
      );

  Widget subName(String lineList) => BlocBuilder<
      LinePickerBloc,LinePickerState>(
      builder: (context,state){
        return state.when(
          initial: () => TextFrame(comment: 'initial'),
          loading: () => TextFrame(comment: 'loading'),
          loaded: (up,down){
            if(up.isNotEmpty && down.isNotEmpty){
              var upfilted = up.where((e) => e.subwayId == lineList);
              var downfilted = down.where((e) => e.subwayId == lineList);
              var upup = upfilted.map((e) => e.trainLineNm).first;
              var downdown = downfilted.map((e) => e.trainLineNm).first;
              return Text(
                upfilted.isNotEmpty
                    ? '${upup.split("-")[1]}  -  ${downdown.split("-")[1]}'
                    : '',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              );
            }
            throw Exception();
          },
          error: (msg) => TextFrame(comment: state.toString()),
        );
      }
  );
}
