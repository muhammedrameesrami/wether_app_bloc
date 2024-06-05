import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      fontSize: width * .07,color:Colors.white,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(width: 20),
            Icon(color: Colors.white,
              Icons.cloud,
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
          'Today',
          style: TextStyle(
              fontSize: width * .04, color: appBarColor),
        ),
        SizedBox(
          height: height * .02,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: width * .02,
              ),
              ///first row container
              Container(
                width: width * .45,
                height: height * .22,
                decoration: BoxDecoration(
                    color: isDarkMode == false
                        ? Color(0xFF037E40)
                        : Color.fromRGBO(30, 31, 33, 1.0),
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('09:00 AM',
                            style:
                            TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                        SizedBox(height: height * .005),
                        Row(
                          children: [
                            Text('temperature°',
                                style: TextStyle(
                                    fontSize: width * .03,color: Color(0xFFCCA52A))),

                            Icon(color: Color(0xFFCCA52A),
                              Icons.cloud,
                              size: width * .06,
                            )
                          ],
                        ),
                        SizedBox(height: height * .01),
                        Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: Image(
                                        color: isDarkMode == false
                                            ? Color(0xFFCCA52A)
                                            : Colors.white,
                                        image: AssetImage(
                                            'assets/img.png'))),
                                Text('${wetherData['rainCahnce']}%',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            ),
                            SizedBox(width: width * .1),
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: const Image(color: Color(0xFFCCA52A),
                                        image: AssetImage(
                                            'assets/img_1.png'))),
                                Text('{windSpeed}Km /h',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: height * .002),
                        Text('climate',
                            style:
                            TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * .04,
              ),
              /// second row container
              Container(
                width: width * .45,
                height: height * .22,
                decoration: BoxDecoration(
                    color: isDarkMode == false
                        ? Color(0xFF037E40)
                        : Color.fromRGBO(30, 31, 33, 1.0),
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('12:00 PM',
                            style:
                            TextStyle(fontSize: width * .05,color: Color(0xFFCCA52A))),
                        SizedBox(height: height * .005),
                        Row(
                          children: [
                            Text('temperature°',
                                style: TextStyle(
                                    fontSize: width * .06,color: Color(0xFFCCA52A))),
                            SizedBox(width: width * .02),
                            Icon(color: Color(0xFFCCA52A),
                              Icons.cloud,
                              size: width * .06,
                            )
                          ],
                        ),
                        SizedBox(height: height * .01),
                        Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: Image(
                                        color: isDarkMode == false
                                            ? Color(0xFFCCA52A)
                                            : Colors.white,
                                        image: AssetImage(
                                            'assets/img.png'))),
                                Text('{rainChance}%',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            ),
                            SizedBox(width: width * .1),
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: const Image(color: Color(0xFFCCA52A),
                                        image: AssetImage(
                                            'assets/img_1.png'))),
                                Text('{windSpeed}Km /h',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: height * .002),
                        Text('climate',
                            style:
                            TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * .04,
              ),
              /// third row container
              Container(
                width: width * .45,
                height: height * .22,
                decoration: BoxDecoration(
                    color: isDarkMode == false
                        ?Color(0xFF037E40)
                        : Color.fromRGBO(30, 31, 33, 1.0),
                    borderRadius: BorderRadius.circular(35)),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('03:00 PM',
                            style:
                            TextStyle(fontSize: width * .05,color: Color(0xFFCCA52A))),
                        SizedBox(height: height * .005),
                        Row(
                          children: [
                            Text('temperature°',
                                style: TextStyle(
                                    fontSize: width * .06,color: Color(0xFFCCA52A))),
                            SizedBox(width: width * .02),
                            Icon(color: Color(0xFFCCA52A),
                              Icons.cloud,
                              size: width * .06,
                            )
                          ],
                        ),
                        SizedBox(height: height * .01),
                        Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: Image(
                                        color: isDarkMode == false
                                            ? Color(0xFFCCA52A)
                                            : Colors.white,
                                        image: AssetImage(
                                            'assets/img.png'))),
                                Text('{rainChance}%',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            ),
                            SizedBox(width: width * .1),
                            Column(
                              children: [
                                SizedBox(
                                    height: height * .04,
                                    width: width * .05,
                                    child: const Image(color: Color(0xFFCCA52A),
                                        image: AssetImage(
                                            'assets/img_1.png'))),
                                Text('{windSpeed}Km /h',
                                    style: TextStyle(
                                        fontSize: width * .02,color: Color(0xFFCCA52A))),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: height * .002),
                        Text('climate',
                            style:
                            TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * .04,
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Text(
          '5 days forecast',
          style: TextStyle(
              fontSize: width * .04, color: appBarColor),
        ),
        SizedBox(
          height: height * .03,
        ),
        /// bottom section
        bottomContainer()
      ],
    ),
  );
}
