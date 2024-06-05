
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Core/Common/Common.dart';

Container bottomContainer() {
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
                  style: TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
              Text(formattedTime,
                  style: TextStyle(fontSize: width * .04,color: Color(0xFFCCA52A))),
            ],
          ),
        ),
        SizedBox(width: width * .06),
        SizedBox(
            height: height * .03,
            width: width * .2,
            child: Image(
              color: isDarkMode == false
                  ? Color(0xFFCCA52A)
                  : Colors.white,
              image: const AssetImage('assets/img_3.png'),
            )),
        SizedBox(width: width * .1),
        Text('26°',
            style: TextStyle(fontSize: width * .07,color: Color(0xFFCCA52A))),
        SizedBox(width: width * .15),
        Text('26°', style: TextStyle(fontSize: width * .04,color: Color(0xFFCCA52A)))
      ],
    ),
  );
}