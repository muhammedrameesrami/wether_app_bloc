import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Core/Common/Common.dart';

class WeaklyWeather extends StatelessWidget {
  final Map<String,dynamic>wetherData;
  const WeaklyWeather({
    super.key,required this.wetherData
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width * .02,
          ),
          ///first row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('MonDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// second row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('TuesDAy',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// third row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WednessDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// fourth row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ThursDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// fifth row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('FriDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// sixth row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SaturDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
          /// seventh row container
          Container(
            width: width * .45,
            height: height * .22,
            decoration: BoxDecoration(
                color: isDarkMode == false
                    ? Color(0xFF037E40)
                    : Color.fromRGBO(30, 31, 33, 1.0),
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SunDay',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A))),
                    SizedBox(height: height * .005),
                    Row(
                      children: [
                        Text('temperature°${wetherData['main']['temp']}°C',
                            style: TextStyle(
                                fontSize: width * .03,color: Color(0xFFCCA52A))),

                        Icon(color: Color(0xFFCCA52A),
                          Icons.cloud,
                          size: width * .06,
                        )
                      ],
                    ),
                    SizedBox(height: height * .01),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: Image(
                                    color: isDarkMode == false
                                        ? Color(0xFFCCA52A)
                                        : Colors.white,
                                    image: AssetImage(
                                        'assets/img.png'))),
                            Text('"${(wetherData['clouds']['all']+wetherData['main']['humidity'])/2}%',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        ),
                        SizedBox(width: width * .1),
                        Column(
                          children: [
                            SizedBox(
                                height: height * .04,
                                width: width * .05,
                                child: const Image(color: Color(0xFFCCA52A),
                                    image: AssetImage(
                                        'assets/img_1.png'))),
                            Text('${wetherData['wind']['speed']} Km / h',
                                style: TextStyle(
                                    fontSize: width * .02,color: Color(0xFFCCA52A))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: height * .002),
                    Text('climate',
                        style:
                        TextStyle(fontSize: width * .03,color: Color(0xFFCCA52A)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * .04,
          ),
        ],
      ),
    );
  }
}
