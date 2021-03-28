import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/FullScreen.dart';
import 'package:flutter_application_1/right_chatroom/NavigationService.dart';
import 'package:flutter_application_1/screen/WhiteBoard.dart';
//Widget
import 'package:flutter_application_1/widget/Header.dart';
import 'package:flutter_application_1/widget/HomeCreate.dart';
import 'package:flutter_application_1/widget/HomeRecent.dart';

//Screen
import 'package:flutter_application_1/screen/Presentation.dart';
import 'package:flutter_application_1/screen/Seminar.dart';
import 'package:flutter_application_1/screen/Video.dart';

var NVF = new NavigationService();
void main() {
  runApp(
    MaterialApp(
      //home: Home()
      navigatorKey: NVF.navigationKey,
      routes: {
        //'/': (context) => Presentation(),
        '/': (context) => Home(),
        '/presentation': (context) => Presentation(),
        '/seminar': (context) => Seminar(),
        '/video': (context) => Video(),
        '/board': (context) => WhiteBoard(),
        '/fullScreen': (context) => FullScreen(),
        //'/presentation':(context)=> MyHomePage(),
        //'/W1': (context) => DividerHome(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String class1 = 'White Board';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Header(),
          HomeCreate(),
          HomeRecent(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
