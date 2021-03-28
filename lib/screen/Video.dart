import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/right_chatroom.dart';
import 'package:flutter_application_1/widget/BottomTools.dart';
import 'package:flutter_application_1/widget/Notifications.dart';
import 'package:flutter_application_1/widget/SeminarVideoCam.dart';
import 'package:flutter_application_1/widget/StartSeminar.dart';
import 'package:flutter_application_1/widget/left_tool.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            //LeftTools
            flex: 80,
            child: Container(
              color: Colors.grey[400],
              child: Left_tool(),
            ),
          ),
          Expanded(
            flex: 1470,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  //Notifications
                  flex: 80,
                  child: Notifications(),
                ),
                Expanded(
                  //WorkingArea
                  flex: 880,
                  child: Container(
                    color: Colors.grey[50],
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            //Left
                            flex: 1,
                            child: Material(
                              color: Colors.grey[50],
                              child: StartVideo(),
                            )),
                        Expanded(
                          //Right
                          flex: 1,
                          child: VideoStudentCam(),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //BottomTools
                  flex: 120,
                  child: BottomTools(),
                ),
              ],
            ),
          ),
          Expanded(
            //RightChatRoom
            flex: 370,
            child: Container(
              color: Colors.grey[400],
              child: right_chatroom(),
            ),
          )
        ],
      ),
      backgroundColor: Colors.amber[100],
    );
  }
}
