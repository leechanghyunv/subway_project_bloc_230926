import 'package:get/get.dart';
import 'package:subway_project_withbloc_230919/inside_toggle/toggle_To_dialogA.dart';
import '../bloc_provider/store_info_bloc/store_to_table_bloc/table_info_bloc.dart';
import '../inside_toggle/toggle_To_dialogAA.dart';
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

late String line = 'Line2';

class _HomeScreenState extends State<HomeScreen> {

  SharedPreManager sharedPreManager = SharedPreManager();
  late String subwayname = 'SEOUL';
  late List<String> subwayList = [];

  bool state = false;

  @override
  void initState() {
    super.initState();
    sharedPreManager.init();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutMainScreen(
      colorBar: BlocConsumer<MicroAirBloc,MicroAirState>(
          listener: (context,state){
            state.when(
                initial: (){},
                loading: (msg){},
                loaded: (dustModel, level, dustInfo, color){
                  setState(() => line = dustInfo.barLevel);
                },
                err: (err){});
          },
          builder: (context,state){
            return state.when(
                initial: () => const ColorBar(line: 'Line2'),
                loading: (msg) => const ColorBar(line: 'Line2'),
                err: (msg) => const ColorBar(line: 'Line2'),
                loaded: (dustModel, level, dustInfo, color){
                  return ColorBar(line: line);
                },
            );
          }),
      dropDown: DropdownCustom(
        value: line,
        onChanged: (value) => setState(() => line = value),
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
        onTap1: () => setState(()  => state = false,),
        onTap2: () => setState(()  => state = true),

      ),
      toggleCustom: ToggleController(
        onToggle: (index){
          if(index == 0){
            toggleguide();
            Get.dialog(
             ToggleToDialogA(),
            );
          }else if(index == 1){
            // toggleguide2();
            // subwayList = box.read('List').cast<String>().toList() ?? [];
            // List<String> sharedList = sharedPreManager.getList();
            // List<String> reversed = subwayList.reversed.toSet().toList();
            Get.dialog(
              AlertDialog(
                content: SwitchDialogB(
                    subwayList: []),
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
                        context.read<ScaduleBloc>().add(ScaduleEvent.started(state.code));
                        if(state.code.contains('정보없음')){
                          return const TextFrame(comment: '목적지를 설정해주세요');
                        } else {
                          return TableScreen(
                            subName: state.subname,
                            engName: state.engname,
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
