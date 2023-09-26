import 'package:subway_project_withbloc_230919/bloc_provider/store_info_bloc/store_to_ui_bloc/transfer_bloc.dart';
import '../../custom_widget/common.dart';
import '../../setting/exportA.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: Device.aspectRatio >= 0.5 ? 50.3.h : 44.5.h,
      child: RotatedBox(
          quarterTurns: 3,
        child: BlocBuilder<TransferBloc,TransferState>(
          builder: (context,state){
            return state.when(
              initial: () => SeoulWidget(),
              loading: () => SeoulWidget(),
              error: (error) => SeoulWidget(),
              loadedA: (infoA,infoB){
                var name = infoA.first.subname;
                var eng = infoA.first.engname;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Tooltip(
                      message: '',
                      textStyle: commonStyle(),
                      child: GestureDetector(
                        child: AutoSizeText(
                          name == 'SEOUL' ? 'SEOUL' : '${name}역',
                          style: common(name),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Text(eng == 'SEOUL' ? ' SEOUL' : ' ${eng}',
                    style: engcommon(eng),
                    )
                  ],
                );
              },
              loadedB: (infoB,infoA){
                var name = infoB.first.subname;
                var eng = infoB.first.engname;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Tooltip(
                      message: '',
                      textStyle: commonStyle(),
                      child: GestureDetector(
                        child: AutoSizeText(
                          name == 'SEOUL' ? 'SEOUL' : '${name}역',
                          style: common(name),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Text(eng == 'SEOUL' ? ' SEOUL' : ' ${eng}',
                      style: engcommon(eng),
                    ),
                  ],
                );
              },
            );
          }),

      ),
    );
  }

  common(String name) => TextStyle(
    fontSize: name.length == 2 ? 33.sp /// 80
        : name.length == 3 ? 32.sp /// 80
        : name.length == 4 ? 32.sp /// 80
        : name.length == 5 ? 32.sp /// 60
        : name.length == 6 ? 30.sp /// 60
        : name.length == 7 ? 29.sp /// 45
        : name.length == 8 ? 27.5.sp /// 45
        : name.length == 9 ? 26.5.sp /// 45
        : name.length == 10 ? 26.5.sp /// 45
        : name.length == 11 ? 24.5.sp /// 45
        : name.length == 12 ? 24.5.sp /// 45
        : name.length == 13 ? 24.sp /// 45
        : 21.5.sp,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );


}
