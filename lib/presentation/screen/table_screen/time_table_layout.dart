import '../../../setting/exportA.dart';

class LayoutTable extends StatelessWidget {

  final Widget? child;
  Widget? floatingActionButton;

   LayoutTable({super.key, this.child,this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: CustomContainer(
            builder: BlocBuilder<WeatherBloc,WeatherState>(
                builder: (context,state){
                  return state.when(
                      initial: () => TextFrame(comment: 'initial.....'),
                      loading: (msg) => TextFrame(comment: msg),
                      loaded: (weather, main, widget){
                        return Container(
                          color: Colors.grey[300],
                          width:  double.maxFinite,
                          alignment: Alignment.centerLeft,
                          height: 14.4.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  widget,
                                  TextFrame(
                                      comment: weather.first.description,overflow: TextOverflow.fade
                                  ),
                                  SizedBox(width: 5,),
                                  TextFrame(
                                      comment: '${(main.temp- 273.15).toStringAsFixed(0)}\u2103'
                                  ),
                                  Expanded(child: Text('')),
                                  TimerBuilder.periodic(
                                    const Duration(seconds: 1),
                                    builder: (context) {
                                      return Row(
                                        children: [
                                          TextFrame(
                                              comment: formatDate(
                                                  DateTime.now(),
                                                  ['',am ,' ',HH, ':', nn, ':', ss, ' '])
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(width: 10,),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(width: 15,),
                                ],
                              ),

                            ],
                          ),
                        );
                      },
                      err: (msg) => TextFrame(comment: msg),
                  );
                }),

                child: Container(
                  alignment: Alignment.center,
                  child: child,
                ),
          ),
          floatingActionButton: floatingActionButton,
        ),
    );
  }
}

class CustomContainer extends StatelessWidget {

  final Widget? child;
  final Widget? builder;

  const CustomContainer({super.key, this.child, this.builder});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        color: Colors.white,
        height: 100.h,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey[300],
                width:  double.maxFinite,
                alignment: Alignment.centerLeft,
                height: 14.4.w,
                child: builder,
              ),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: child,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
