import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Core/Common/Common.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<String> searchHistory = [];

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      searchHistory = pref.getStringList('searches') ?? ['No locations stored'];
    });
    print(searchHistory);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode == false ? Colors.black : bgColor,
      appBar: AppBar(
        backgroundColor: isDarkMode == false ? Colors.black : bgColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFCCA52A),
            size: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
        titleSpacing: MediaQuery.of(context).size.width * 0.17,
        title: Text(
          'History',
          style: GoogleFonts.poppins(
            color: Color(0xFFCCA52A),
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: searchHistory.length,
        itemBuilder: (context, index) {
          List<String> details = searchHistory.reversed.toList()[index].split(' - ');
          String dateTimeString = details[0];
          String locationName = details[1];
          String wether = details[2];

          return Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
              top: MediaQuery.of(context).size.height * .02,
              right: MediaQuery.of(context).size.width * .02,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF18804C)
                    : Color.fromRGBO(30, 31, 33, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width * .95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * .01),
                  Text(
                    dateTimeString,
                    style: TextStyle(
                      color: isDarkMode == false
                          ? Color(0xFFCCA52A)
                          : Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.width * .03,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Center(
                      child: Text(
                        locationName,
                        style: TextStyle(
                          color: isDarkMode == false
                              ? Color(0xFFCCA52A)
                              : Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .02),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Center(
                      child: Text(
                        wether,
                        style: TextStyle(
                          color: isDarkMode == false
                              ? Color(0xFFCCA52A)
                              : Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
