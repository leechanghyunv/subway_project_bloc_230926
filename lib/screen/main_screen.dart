import 'package:get/get.dart';
import '../setting/exportA.dart';
import '../setting/exportB.dart';
import 'main_screen/main_main_frame.dart';
import 'other_screen/line_picker_A.dart';
import 'other_screen/line_picker_B.dart';
import 'table_screen/table_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  SharedPreManager sharedPreManager = SharedPreManager();
  late String initial = 'Line2';
  late String linevalue = '';
  late String subwayname = 'SEOUL';
  late List<String> subwayList = [];

  bool state = false;

  @override
  void initState() {
    super.initState();
    sharedPreManager.init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initial = context.watch<MicroAirBloc?>()!.state.when(
      initial: () => 'Line2', loading: (msg) => 'Line2',err: (msg) => 'Line2',
      loaded: (a,b,dustInfo,c) => dustInfo.barLevel);
    linevalue = context.watch<TransferBloc?>()!.state.when(
        initial: () => initial, loading: () => 'Line2', error: (msg) => 'Line2',
        loaded: (subA,subB) => subA.first.line_ui);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutMainScreen(
      colorBar: ColorBar(
          line: linevalue
      ),
      dropDown: DropdownCustom(
         value: linevalue,
        onChanged: (value) =>
            setState(() => linevalue = value),
      ),

      iconCustom: IconCustom(
        onTap: (){
          Get.dialog(
            AlertDialog(
              content: Container(
                color: Colors.white,
                height: Device.aspectRatio >= 0.5 ? 100.w : 84.5.w,
                child: TextFormA(
                    onSelected: (value){
                      context.read<SubInfoFilterBloc>().
                      add(SubInfoFilterEvent.filtedList(value));
                      context.read<LinePickerBloc>().
                      add(LinePickerEvent.started(value));
                      Get.dialog(LinePickerA(value: value));
                    },
                    onSubmitted: (name){
                      context.read<UserNameBloc>().
                      add(UserNameEvent.started(name));
                      setState(() {});
                    }
                ),
              ),
              actions: [
                BlocCombineButton(),
              ],
            ),
          );
        },
        onLongPress: (){
          Get.dialog(
            AlertDialog(
              content: Container(
                color: Colors.white,
                height: Device.aspectRatio >= 0.5 ? 115.w : 96.6.w,
                child: TextFormB(
                    onSelectedA: (valueA){
                      context.read<SubInfoFilterBloc>().
                      add(SubInfoFilterEvent.filtedList(valueA));
                      context.read<LinePickerBloc>().
                      add(LinePickerEvent.started(valueA));
                      Get.dialog(LinePickerA(value: valueA));
                    },
                    onSelectedB: (valueB){
                      context.read<SubInfoFilterBloc>().
                      add(SubInfoFilterEvent.filtedList(valueB));
                      context.read<LinePickerBloc>().
                      add(LinePickerEvent.started(valueB));
                      Get.dialog(LinePickerB(value: valueB));
                    },
                    onSubmitted: (name){
                      context.read<UserNameBloc>().
                      add(UserNameEvent.started(name));
                      setState(() {});
                    }
                ),
              ),
              actions: [
                BlocCombineButton(),
              ],
            ),
          );
        },
      ),
      upandDown: UpandDown(
        color1: state == true ? Colors.grey[100] : Colors.grey[400],
        color2: state == false ? Colors.grey[100] : Colors.grey[400],
        onTap1: () => setState(()  => state = false),
        onTap2: () => setState(()  => state = true),

      ),
      toggleCustom: ToggleController(
        onToggle: (index){
          if(index == 0){
            toggleguide();
            Get.dialog(
             ToggleToDialogA(),
            );
           ;
          }else if(index == 1){
            Get.dialog(
              AlertDialog(
                content: BlocBuilder<SubListCubit,List<String>>(
                    builder: (context,state){
                      if(state.isNotEmpty){
                        var subList = state.reversed.toSet().toList();
                        return SwitchDialogB(
                            subwayList: subList);
                      } else {
                        return SwitchDialogB(
                            subwayList: []);
                      }
                }),
                actions: [
                  BlocCombineButton(),
                ],
              ),
            );
          }else if(index == 2){
            toggleguide();
            Get.dialog(
              ToggleToDialogAA(),
            );
          }
        },

      ),
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context){
              return SizedBox(
                height: 76.5.h,
                child: Center(
                  child: BlocBuilder<TableInfoBloc,SubwayModelwithCode>(
                      builder: (context,state){
                        context.read<ScaduleBloc>().
                        add(ScaduleEvent.started(state.code));
                        if(state.code.contains('정보없음')){
                          return const TextFrame(comment: '목적지를 설정해주세요');
                        } else {
                          return TableScreen(
                            subName: state.subname, engName: state.engname,
                          );
                        }
                      },
                ),
                ),
              );
            });
      },
    );
  }
}
