import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Core/Common/Common.dart';
import '../../History/screen/History_Screen.dart';

Drawer DrawerSection(BuildContext context) {
  return Drawer(backgroundColor: Colors.black,
    child: ListView(
      children: <Widget>[
        SizedBox(height: height * .05),
        ListTile(
          title: Row(
            children: [
              SizedBox(width: width * .06),
              Icon(Icons.history, color: Colors.white),
              SizedBox(width: width * .06),
              Text(
                'History',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const History()));
          },
        ),
        ListTile(
          title: Row(
            children: [
              SizedBox(width: width * .06),
              SizedBox(
                  width: 20,
                  height: 20,
                  child: Image(image: AssetImage('assets/img_2.png'))),
              SizedBox(width: width * .06),
              Text('Dark Mode', style: TextStyle(color: Colors.white)),
              SizedBox(width: width * .15),
              Switch(
                value: isDarkMode,
                onChanged: (value) {
                  // setState(() {
                  //   isDarkMode = value;
                  //   // Update the theme based on the new mode
                  //   if (isDarkMode) {
                  //     isDarkMode = true;
                  //     // Set dark theme
                  //     // You can customize your dark theme as needed
                  //     // For simplicity, let's use ThemeData.dark()
                  //     // You might want to use ThemeData.from to copy the existing theme and modify only the necessary properties
                  //     // or define a custom dark theme
                  //   } else {
                  //     isDarkMode = false;
                  //     // Set light theme
                  //     // Similarly, you can customize your light theme
                  //   }
                  // });
                },
              )
            ],
          ),
          onTap: () {
            // Handle onTap if needed
          },
        ),
      ],
    ),
  );
}
