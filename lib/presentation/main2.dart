import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/NavigationService.dart';
import 'package:flutter_application_1/right_chatroom/right_chatroom.dart';
import 'package:flutter_application_1/widget/BottomTools.dart';
import 'package:flutter_application_1/widget/Notifications.dart';
import 'package:flutter_application_1/widget/left_tool.dart';
//import 'left_tool.dart';
//import 'right_chatroom.dart';
import 'presentation_section.dart';
//import 'BottomTools.dart';
//import 'Notifications.dart';
import 'FullScreen.dart';
//import 'NavigationService.dart';

void main() {
  runApp(MyApp());
}

var NVF = new NavigationService();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teachy I am trying/crying',
      //home: MyHomePage(title: 'Teachy Try'),
      debugShowCheckedModeBanner: false, //拿掉debug
      navigatorKey: NVF.navigationKey,
      initialRoute: '/presentation',
      routes: {
        '/fullScreen': (context) => FullScreen(),
        '/presentation': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 80,
          child: Left_tool(),
        ),
        Expanded(
          flex: 1469,
          child: Column(
            children: [
              //notify
              Expanded(
                flex: 80,
                child: Notifications(),
              ),
              //presentation
              Expanded(
                flex: 880,
                child: presentation_section(),
              ),
              //bottom
              Expanded(
                flex: 120,
                child: BottomTools(),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        Expanded(
          flex: 371,
          child: right_chatroom(),
        ),
      ],
    ));
  }
}
