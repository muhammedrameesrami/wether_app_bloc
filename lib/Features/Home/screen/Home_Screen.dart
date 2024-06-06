import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Core/Common/Common.dart';
import '../../../Core/Common/Pallete.dart';
import 'Body_Screen.dart';
import 'Custome_search.dart';
import 'Drawer_Screen.dart';
import 'bloc/get_wether_bloc.dart';


var currentLocation = '';

class Home extends StatefulWidget {

  Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
  void _searchLocation({required Map<String, dynamic> data})async{
    if(_searchController.text.toUpperCase().isNotEmpty){
      setState(() {
        currentLocation=_searchController.text;
      });
      BlocProvider.of<GetWetherBloc>(context).add(GetCurrentWetherEvent(location: _searchController.text));
   SharedPreferences pref=await SharedPreferences.getInstance();
      final List<String> searches = pref.getStringList('searches') ?? [];
      final DateTime now = DateTime.now();
      final String formattedDateTime = '${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}';
      searches.add("$formattedDateTime - ${_searchController.text} - ${data['main']['temp'].toString()}");
      await pref.setStringList('searches', searches);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkMode ? Pallete.darkModeTheme : Pallete.lightModeTheme,
          home: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () => _scaffoldKey.currentState?.openDrawer(),
                child: Icon(
                  Icons.menu_sharp,
                  size: width * 0.07,
                ),
              ),
              titleSpacing: width * 0.17,
              title: Text(
                'WeatherApp',
                style: GoogleFonts.poppins(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            /// drawer section
            drawer: DrawerSection(context),
            /// body section
             body:      BlocBuilder<GetWetherBloc, GetWetherState>(
  builder: (context, state) {
    if(state is GetWetherLoading){
      return Center(child: CircularProgressIndicator(),);
    }else if(state is GetWetherSuccess){
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Location',labelStyle: TextStyle(color: Color(0xFFCCA52A)),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close,color: Color(0xFFCCA52A),),
                  onPressed: () {
                    _searchController.clear();
                    currentLocation='';
                    setState(() {

                    });
                  },
                ),
              ),
              onFieldSubmitted: (value) {
                print(currentLocation);
                _searchLocation(data: state.wetherData);
              },
            ),
          ),
          Expanded(child: bodySection(wetherData:state.wetherData, currentLocation: currentLocation, )),

        ],
      );
    }else{
      print(state.runtimeType);
      return Center(child: Text('No Data '));
    }

  },
),


          ),
        ));
  }



}