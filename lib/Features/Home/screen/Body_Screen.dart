import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wether_app_bloc/Features/Home/screen/weakly%20wether%20section.dart';
import '../../../Core/Common/Common.dart';
import 'Home_Screen.dart';
import 'bottom_Containeer.dart';
Map<String ,dynamic> loca={};
bool isSeearch=false;
SingleChildScrollView bodySection({required Map<String, dynamic> wetherData,required String currentLocation}) {

  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: height * .06,
        ),
        InkWell(onTap: () {
          print('22222222222222222');

          print(loca['locality']);
          print(loca['subLocality']);
          print('!111111111111111111111');
        },
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * .03),
                child:
                     Text(isSeearch?(loca.isNotEmpty?'IN | ${loca['locality']} ,${loca['thoroughfare']}':'PMNA'):wetherData['name'],
                    style: TextStyle(color: Color(0xFFCCA52A),
                        fontSize: width * .04,
                        fontWeight: FontWeight.w200)),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * .03),
              child: Text('climate',
                  style: GoogleFonts.ptSans(color: Color(0xFFCCA52A),
                    fontSize: width * .03,
                  )),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * .2),
              child: Text(wetherData['main']['temp'].toString(),
                  style: GoogleFonts.abel(
                      fontSize: width * .07,color:Color(0xFFCCA52A),
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(width: 20),
           wetherData['weather'][0]['main']=='Clouds'&&wetherData['weather'][0]['main']=='Clear'? Icon(color: Color(0xFFCCA52A),
              CupertinoIcons.cloud_sun,
              size: width * .2,
            ):wetherData['weather'][0]['main']=='Rain'?Icon(color: Color(0xFFCCA52A),
            CupertinoIcons.cloud_bolt_rain,
             size: width * .2,
           ):Icon(color: Color(0xFFCCA52A),
            CupertinoIcons.cloud,
             size: width * .2,
           )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * .025),
              child: Container(
                width: width * .95,
                height: height * .2,
                decoration: BoxDecoration(
                    color: isDarkMode == false
                        ? Color(0xFF18804C)
                        : Color.fromRGBO(35, 40, 43, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(
                              pi), // Rotate 180 degrees
                          child: Icon(CupertinoIcons.thermometer,color: Color(0xFFCCA52A),
                              size: width * .08),
                        ),
                        SizedBox(height: height * .02),
                        Text(
                          'temp: ${wetherData['main']['temp']}°C',
                          style: TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: height * .1,
                            width: width * .15,
                            child: Image(
                              color: isDarkMode == false
                                  ? Color(0xFFCCA52A)
                                  : Colors.white,
                              image: AssetImage(
                                'assets/img.png',
                              ),
                            )),
                        Text(
                          "${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%",
                          style: TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: height * .05,
                            // width: width * .02,
                            child: Image( color: Color(0xFFCCA52A),
                              image:
                              AssetImage('assets/img_1.png'),
                            )),
                        SizedBox(height: height * .005),
                        Text(
                          '${wetherData['wind']['speed']} Km / h',
                          style: TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: height * .02,
        ),
        Text(
          'Weakly Weather',
          style: TextStyle(
              fontSize: width * .04, color: appBarColor),
        ),
        SizedBox(
          height: height * .02,
        ),
        /// weakly weather section
        WeaklyWeather(wetherData: wetherData,),

        SizedBox(
          height: height * .03,
        ),
        Text(
          'Live Update',
          style: TextStyle(
              fontSize: width * .04, color: appBarColor),
        ),
        SizedBox(
          height: height * .03,
        ),
        /// bottom section
        bottomContainer(weather: wetherData)
      ],
    ),
  );
}

