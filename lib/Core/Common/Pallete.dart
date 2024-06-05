import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Common.dart';

class Pallete {

  /// light mode theme set
  static var lightModeTheme = ThemeData.light().copyWith(
    drawerTheme: DrawerThemeData(
      backgroundColor: Color.fromRGBO(176, 188, 200, 1.0),
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        surfaceTintColor: bgColor,
        iconTheme: IconThemeData(color: appBarColor),
        titleTextStyle: GoogleFonts.poppins(color: appBarColor)),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Color(0xFFCCA52A)),
      titleLarge: TextStyle(color: Color(0xFFCCA52A)),
      titleMedium: TextStyle(color: Color(0xFFCCA52A)),
      bodyLarge: TextStyle(color: Color(0xFFCCA52A)),
      bodyMedium: TextStyle(color: Color(0xFFCCA52A)),
      bodySmall: TextStyle(color: Color(0xFFCCA52A)),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: GoogleFonts.urbanist(color: Colors.black38),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    iconTheme: const IconThemeData(color: Color.fromRGBO(11, 76, 122, 1.0)),
  );

  /// dark mode color theme set
  static var darkModeTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: bgColor,
    appBarTheme: AppBarTheme(
        backgroundColor: bgColor,
        surfaceTintColor: bgColor,
        iconTheme: IconThemeData(color: appBarColor),
        titleTextStyle: GoogleFonts.poppins(color: appBarColor)),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Colors.white),
      titleLarge: const TextStyle(color: Colors.white),
      titleMedium: const TextStyle(color: Colors.white),
      bodyLarge: const TextStyle(color: Colors.white),
      bodyMedium: const TextStyle(color: Colors.white),
      bodySmall: const TextStyle(color: Colors.white),
    ),
    // hoverColor: const Color.fromRGBO(31, 34, 42, 1),
    listTileTheme: ListTileThemeData(
      titleTextStyle: GoogleFonts.urbanist(color: Colors.black38),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    drawerTheme: DrawerThemeData(
      backgroundColor: bgColor,
    ),
  );
}
