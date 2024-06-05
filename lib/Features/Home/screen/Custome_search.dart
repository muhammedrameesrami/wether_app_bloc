import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  final Function(String) onLocationSelected;

  CustomSearchDelegate({required this.onLocationSelected});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }
  Future<void> _saveLocation(String location) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_location', location);
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListTile(
      title: Text(query),
      onTap: () {
        onLocationSelected(query);
        close(context, query);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Here you can implement the logic to fetch location suggestions.
    final suggestions = [
      'New York',
      'Los Angeles',
      'Chicago',
      'Houston',
      'Phoenix'
    ].where((location) => location.toLowerCase().contains(query.toLowerCase()));

    return ListView(
      children: suggestions.map((location) {
        return ListTile(style: ListTileStyle.list,
          title: Text(location,style: TextStyle(color: Colors.white),),
          onTap: () async{
            await _saveLocation(location);
            onLocationSelected(location);
            close(context, location);
          },
        );
      }).toList(),
    );
  }
}
