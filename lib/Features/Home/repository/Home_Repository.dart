import 'package:wether_app_bloc/Core/Common/Common.dart';
import 'package:http/http.dart'as http;
import 'package:wether_app_bloc/Features/Home/screen/Body_Screen.dart';

class HomeRepository{

  /// fetch wether data passing location
  Future<http.Response> getWetherData({required String location})async{
    print('aaaaaaaaaaaaaa');
      final url =
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric';
      try {
        final response = await http.get(Uri.parse(url));
        print("rrrrrrrrrrrrrrrrrrrrrrrr${response.body}");
       return response;
        }
       catch (e) {
        print(e);
        throw Exception('Failed to load weather data: $e');
      }
    }

  }
