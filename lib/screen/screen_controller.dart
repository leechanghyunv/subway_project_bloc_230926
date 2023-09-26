import 'package:subway_project_withbloc_230919/screen/main_screen.dart';
import 'package:subway_project_withbloc_230919/screen/other_screen/loading_screen.dart';

import '../setting/exportA.dart';
import '../setting/shared_manager.dart';

final box = GetStorage();

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {

  late Future<String> _futureData;
  SharedPreManager sharedPreManager = SharedPreManager();

  @override
  void initState() {
    super.initState();
    sharedPreManager.init();
    _futureData = fetchData();
    context.read<MicroAirBloc>().add(MicroAirEvent.started());
    context.read<WeatherBloc>().add(WeatherEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _futureData,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
         if(snapshot.connectionState == ConnectionState.waiting){
           return Loading_Screen();
         }else {
           return HomeScreen();
         }
        }

    );
  }
}

Future<String> fetchData() async {
  await Future.delayed(Duration(milliseconds: 2150));
  return "Data loaded successfully";
}
