import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Add this import

import '../../../Core/Common/Common.dart';




Container bottomContainer({required Map<String, dynamic> weather}) {
  String sunrise = formatTime(weather['sys']['sunrise'], weather['timezone']);
  String sunset = formatTime(weather['sys']['sunset'], weather['timezone']);
  int currentTime = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000;

  bool dayTime = isDayTime(currentTime, weather['sys']['sunrise'], weather['sys']['sunset']);

  return Container(
    width: width * .95,
    height: height * .082,
    decoration: BoxDecoration(
        color: isDarkMode == false
            ? Color(0xFF18804C)
            : Color.fromRGBO(30, 31, 33, 1.0),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * .06),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formattedDay,
                  style: TextStyle(fontSize: width * .03, color: Color(0xFFCCA52A))),
              Text(formattedTime,
                  style: TextStyle(fontSize: width * .04, color: Color(0xFFCCA52A))),
            ],
          ),
        ),
        SizedBox(width: width * .06),
        SizedBox(
            height: height * .03,
            width: width * .2,
            child: Icon(
                 dayTime?CupertinoIcons.cloud_sun:CupertinoIcons.cloud_moon,color:Color(0xFFCCA52A) ,
            )),
        SizedBox(width: width * .1),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Sunrise $sunrise',
                style: TextStyle(fontSize: width * .03, color: Color(0xFFCCA52A))),
            Text('Sunset $sunset',
                style: TextStyle(fontSize: width * .03, color: Color(0xFFCCA52A))),
          ],
        ),
      ],
    ),
  );
}
