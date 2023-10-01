import 'package:get/get.dart';
import 'package:subway_project_withbloc_230919/bloc_provider/sub_List_bloc/sub_list_cubit.dart';
import 'package:subway_project_withbloc_230919/setting/exportA.dart';
import 'package:subway_project_withbloc_230919/setting/exportB.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'bloc_provider/sub_info_bloc/sub_info_provider.dart';

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
      clientId: 'udn9m0j2pb',
      onAuthFailed: (ex) => log("********* 네이버맵 인증오류 : $ex *********"));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory()
  );
  await _initialize();
  timezonefunction();
  runApp(const MyApp());
}

timezonefunction () => tz.initializeTimeZones();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]);
    return ResponsiveSizer(
        builder: (context, orientation, screenType){
          return  MultiBlocProvider(
            providers: [
              BlocProvider<SubListCubit>(
                  create: (_)=>SubListCubit()),
              BlocProvider<SubwayDetaInfo>(
                  create: (_)=>SubwayDetaInfo()),
              BlocProvider<TableInfoBloc>(
                  create: (_)=>TableInfoBloc()),
              BlocProvider<DistanceCubit>(
                  create: (_)=>DistanceCubit()),
              BlocProvider<UserNameBloc>(
                  create: (_)=>UserNameBloc()),
              BlocProvider<SubRepoBloc>(
                  create: (_)=>SubRepoBloc()),
              BlocProvider<MicroAirBloc>(
                  create: (_) => MicroAirBloc()),
              BlocProvider<WeatherBloc>(
                  create: (_) => WeatherBloc()),
              BlocProvider<ArrivalBloc>(
                  create: (_) => ArrivalBloc()),
              BlocProvider<SubInfoFilterBloc>(
                  create: (_) => SubInfoFilterBloc()),
              BlocProvider<SubInfoFilterBlocB>(
                  create: (_) => SubInfoFilterBlocB()),
              BlocProvider<StoreBBloc>(
                  create: (_) => StoreBBloc()),
              BlocProvider<StoreABloc>(
                  create: (_) => StoreABloc()),
              BlocProvider<StoreTBloc>(
                  create: (_) => StoreTBloc()),
              BlocProvider<TransferBloc>(
                  create: (_) => TransferBloc()),
              BlocProvider<LinePickerBloc>(
                  create: (_) => LinePickerBloc()),
              BlocProvider<CodeBloc>(
                  create: (_) => CodeBloc()),
              BlocProvider<LatlngBloc>(
                  create: (_) => LatlngBloc()),
              BlocProvider<ScaduleBloc>(
                  create: (_) => ScaduleBloc()),
            ],
            child: const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: ScreenController(),
            ),
          );
        }
    );


  }
}


