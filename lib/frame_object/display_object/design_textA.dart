import '../../bloc_provider/sub_info_bloc/sub_info_provider.dart';
import '../../model/sub_detail_data_model.dart';
import '../../setting/exportA.dart';
import '../../setting/exportB.dart';

class TextContainerA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget UiText (String textAmsg, String text) =>
        ToolTipWidget(
          message: textAmsg,
          child: Text(text,
            style: textAcommon),
        );

    return Container(
      color: Colors.transparent,
      width:  48.w,
      height: Device.aspectRatio >= 0.5 ? 7.8.h : 6.85.h,
      child: Center(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UiText(textAmsg,'NUMBER'),
                SizedBox(height: 2.w,
                ),
                BlocBuilder<DistanceCubit,SkTelecom_Model>(
                    builder: (context,state){
                        if(state.updown < 0){
                          print('상행');
                          return SubDetailInfo1();
                        }else if(state.updown > 0){
                          print('하행');
                          return SubDetailInfo2();
                        };
                        return UiText(textAmsg, '3728C99');
                    }),
              ],
            ),
            SizedBox(
              width: 6.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UiText(textAmsg2,'GATE'),
                SizedBox(
                  height: 2.w,
                ),
                ToolTipWidget(
                  message: textAmsg2,
                  child: BlocBuilder<TransferBloc,TransferState>(
                      builder: (context,state){
                        return state.when(
                            initial: () => Text('0010',style: textAcommon),
                            loading: () => Text('0010',style: textAcommon),
                            loaded: (stateA,stateB){
                              return HeadingText(
                                  stateA.first.heading,
                                  stateA.first.line_ui);
                            },

                            error: (msg) => Text(msg,
                                style: textAcommon
                            ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget SubDetailInfo1() => BlocBuilder<SubwayDetaInfo,SubDetailModel>(
builder: (context,state){
  print('state.subState1: ${state.subState1}');
  return ToolTipWidget(
  message: textAmsg,
  child: Text('${state.subNumber1}U${state.subState1}',
style: textAcommon,),
  );
});

Widget SubDetailInfo2() => BlocBuilder<SubwayDetaInfo,SubDetailModel>(
    builder: (context,state){
      print('state.subState2: ${state.subState2}');
      return ToolTipWidget(
        message: textAmsg,
        child: Text('${state.subNumber2}D${state.subState2}',
          style: textAcommon,),
      );
    });

Widget HeadingText(String side,String line) => RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(
        text:
        side == 'RIGHT' ? 'RIGH'
            : side == 'LEFT' ? 'L'
            : side == null ? '01'
            : '01',
        style: textAstyleL(side,line),
      ),

      TextSpan(
        text:
        side == 'RIGHT' ? 'T'
            : side == 'LEFT' ? 'EFT'
            : side == null ? '00'
            : '00',
        style: textAstyleR(side,line),
      ),
    ],
  ),
);

Color headingColor (String heading) {
  return  heading == 'Line1' ? Color(0xff2a4193)
      : heading == 'Line2' ? Color(0xff027a31)
      : heading == 'Line3' ? Color(0xffd75e02)
      : heading == 'Line4' ? Color(0xff028bb9)
      : heading == 'Line5' ? Color(0xff9637b6)
      : heading == 'Line6' ? Color(0xff885408)
      : heading == 'Line7' ? Color(0xff525d02)
      : heading == 'Line8' ? Color(0xfff62d37)
      : heading == 'Line9' ? Color(0xff916a2a)
      : heading == '서해' ? Color(0xff8FC31F)
      : heading == '공항철도' ? Color(0xff0090D2)
      : heading == '경의선' ? Color(0xff77C4A3)
      : heading == '경춘선' ? Color(0xff0C8E72)
      : heading == '수인분당' ? Color(0xFFE7E727)
      : heading == '신분당' ? Color(0xffD4003B)
      : heading == '경강선' ? Color(0xff003DA5)
      : heading == '인천1선' ? Color(0xff7CA8D5)
      : heading == '인천2선' ? Color(0xffED8B00)
      : heading == '에버라인' ? Color(0xff6FB245)
      : heading == '의정부' ? Color(0xffFDA600)
      : heading == '우이신설' ? Color(0xffB7C452)
      : heading == '김포골드' ? Color(0xffA17800)
      : Color(0xff6789CA); /// 신림
}