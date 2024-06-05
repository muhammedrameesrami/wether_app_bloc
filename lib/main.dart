import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:wether_app_bloc/Features/Home/controller/Home_Controller.dart';
import 'package:wether_app_bloc/Features/Home/repository/Home_Repository.dart';

import 'Core/Common/Common.dart';
import 'Core/Common/Pallete.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Home/screen/bloc/get_wether_bloc.dart';
import 'Features/SplashScreen/Screen/SplashScreen.dart';

Future<void> main() async{
  await initializeDateFormatting();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MultiBlocProvider( providers: [
      BlocProvider (
        create: (context) => GetWetherBloc(homeController: HomeController(homeRepostory: HomeRepository())),
      ),
    ],
  child: MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDarkMode ?Pallete.darkModeTheme:Pallete.lightModeTheme,
      home: SplashScreen(),
    ),
);
  }
}
