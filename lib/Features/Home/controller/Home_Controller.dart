import 'dart:convert';

import 'package:wether_app_bloc/Features/Home/repository/Home_Repository.dart';


class HomeController{
  final HomeRepository _homeRepository;
  HomeController({required HomeRepository homeRepostory}):_homeRepository=homeRepostory;

  /// getwether function pass to cubit
  Future<Map<String,dynamic>>getWetherData({required String location}) async {
   final response= await _homeRepository.getWetherData(location: location);

   if (response.statusCode == 200) {
     return json.decode(response.body);
   } else if (response.statusCode == 404) {
     return {};
     // throw Exception('Location not found');
   } else {
     return {};
     // throw Exception('Failed to load weather data: ${response.statusCode}');
  }
}}