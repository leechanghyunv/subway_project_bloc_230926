import 'package:get/get.dart';
import '../../../setting/exportA.dart';
import '../../../setting/exportB.dart';

class ColorBar extends StatelessWidget {
  final String line;

  const ColorBar({super.key, required this.line});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 6.w,
        ),
        BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            return state.when(
              err: (err) => BarSize(line),
              initial: () => BarSize(line),
              loading: (msg) => BarSize(line),
              loaded: (weather, main, widget) {
                return GestureDetector(
                  onTap: () {
                    Get.snackbar(
                      'Snackbar Title',
                      'This is a snackbar message',
                      icon: widget,
                      titleText: Time(),
                      messageText: Column(
                        children: [
                          Row(
                            children: [
                              BlocBuilder<MicroAirBloc, MicroAirState>(
                                  builder: (context, state) {
                                return state.when(
                                  initial: () => TextFrame(comment: 'initial'),
                                  loading: (loading) =>
                                      TextFrame(comment: 'loading'),
                                  loaded: (list, level, DustInfo, Color) {
                                    return TextFrame(
                                        comment: '미세먼지농도 ${level.toString()}pm ${DustInfo.commnet.toString()}');
                                  },
                                  err: (err) => TextFrame(comment: 'loading'),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              TextFrame(comment: '현재온도'),
                              SizedBox(width: 8.0),
                              TextFrame(
                                  comment:
                                      '${(main.temp - 273.15).toStringAsFixed(1)}\u2103'),
                            ],
                          ),
                        ],
                      ),
                      mainButton: TextButton(
                        onPressed: () {},
                        child: TextFrame(comment: '설문조사', color: Colors.black),
                      ),
                      backgroundColor: Colors.grey[200],
                      shouldIconPulse: true,
                      duration: Duration(seconds: 5),
                    );
                  },
                  child: BarSize(line),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

Widget BarSize(String line) => SizedBox(
      width: 8.w,
      height: Device.aspectRatio >= 0.5 ? 58.5.h : 52.h,
      child: ColorContainer(line),
    );

Widget Time() => TimerBuilder.periodic(
      const Duration(seconds: 1),
      builder: (context) {
        return Row(
          children: [
            TextFrame(
              comment: DateFormat('M월 dd일').format(DateTime.now()),
            ),
            TextFrame(
                comment: formatDate(
                    DateTime.now(), [' ', am, ' ', hh, '시 ', nn, '분'])),
          ],
        );
      },
    );
