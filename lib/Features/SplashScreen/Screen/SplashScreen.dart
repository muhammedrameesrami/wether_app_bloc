import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wether_app_bloc/Core/Common/Common.dart';
import 'package:wether_app_bloc/Features/Home/screen/Body_Screen.dart';

import '../../Home/screen/Home_Screen.dart';
import '../../Home/screen/bloc/get_wether_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loader = true;
  Future<void> getCurrentLocation({required BuildContext context}) async {
    try {
      final permissionStatus = await Permission.location.request();
      if (permissionStatus.isGranted) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        print('position $position');
        List<Placemark> placemarks = await placemarkFromCoordinates(
            position.latitude, position.longitude);

        loca = placemarks[0].toJson();
        print('llllllllllllllllllllllllll${loca}');

        if (placemarks != null && placemarks.isNotEmpty) {
          // setState(() {
          //   currentLocation = placemarks[0].locality ?? 'Malappuram';
          // });

          // if(context.mounted){
          print('bbbbbbb');
// WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) =>
//    ,);
          SchedulerBinding.instance.addPostFrameCallback(
            (timeStamp) {
              context.read<GetWetherBloc>().add(GetCurrentWetherEvent(
                  location: placemarks[0].locality ?? 'Malappuram'));
              setState(() {
                loader = false;
              });
            },
          );

          // }
        } else {
          print('knnejv');
          // setState(() {
          //   currentLocation = 'No placemark found';
          // });
        }
      } else {
        print('juuhiojojjo2222222');
        // setState(() {
        //   currentLocation = 'Permission denied by user';
        // });
      }
    } catch (e) {
      print('error $e');
      // setState(() {
      //   currentLocation = 'Error: $e';
      // });
    }
  }

  @override
  void initState() {
    super.initState();

    // SchedulerBinding.instance.addPostFrameCallback((_) {
    getCurrentLocation(context: context);
    // });

    // WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_){
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset("assets/weather.png"),
            const Spacer(flex: 1),
            const Text.rich(
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(
                      text: "Find ",
                      style: TextStyle(color: Color(0xFFCCA52A))),
                  TextSpan(
                    text: "Weather ",
                    style: TextStyle(color: Color(0xFFCCA52A)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Text(
              "Stay ahead of the weather with our app, delivering accurate forecasts and real-time updates wherever you go",
              style: TextStyle(color: Color(0xFF9D7A0A)),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            loader
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ElevatedButton(
                    onPressed: () {
                      if (!loader) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF18804C),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Text(
                      "Get start",
                      style: TextStyle(fontSize: 18, color: Color(0xFFCCA52A)),
                    ),
                  ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
