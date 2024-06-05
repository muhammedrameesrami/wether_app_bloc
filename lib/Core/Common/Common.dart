import 'dart:ui';
import 'package:intl/intl.dart';


/// api constant
 const apiKey= 'fb5f73074c10f614c64df0c325b92f73';

///device height and weight
double height = 0.0;
double width = 0.0;

/// current date and day to get date formate
String formattedTime = DateFormat.jm().format(DateTime.now());
String formattedDay = DateFormat.E().format(DateTime.now()).substring(0, 3);

///App bar color
var appBarColor = const Color(0xFFCCA52A);

///bgcolor
var bgColor = const Color(0xFF0AD9D9);
bool isDarkMode=false;
