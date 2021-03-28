import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyIcon.dart';
import 'memberIcon.dart';

class memberStudent extends StatefulWidget {
  final String stuName;
  final String stuPicUrl;
  memberStudent({this.stuName, this.stuPicUrl});
  @override
  _memberStudentState createState() => _memberStudentState();
}

class _memberStudentState extends State<memberStudent> {
  // bool _pinIsPressed = false;
  //
  // Color _allBlue = Colors.blue[700];
  // Color _pinBorderColor = Colors.transparent;
  // Color _pinColor = Colors.grey[600];
  // Color _inkColor = Colors.transparent;
  // Color _hoverColor = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 350 / 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 7, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          '${widget.stuPicUrl}',
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        top: 28,
                        left: 28,
                        child: Container(
                          height: 10,
                          margin: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                  //SizedBox(width: 2),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Container(
                      width: 120,
                      child: Text(
                        '${widget.stuName}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                  //Spacer(),

                  MyIcon(
                    iconUrl: 'icon/right_chatroom/assistant.png',
                    iconHoverUrl: 'icon/right_chatroom/assistant_active.png',
                    iconSize: 30,
                    borderActiveColor: Colors.blueAccent[700],
                    borderHoverColor: Colors.transparent,
                    borderWidth: 1.5,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.grey[700],
                    iconHoverColor: Colors.grey[700],
                    iconFunction: () {},
                  ),
                  MyIcon(
                    iconUrl: 'icon/Seminar/pin.png',
                    iconHoverUrl: 'icon/Seminar/pin_active.png',
                    iconSize: 30,
                    borderActiveColor: Colors.blueAccent[700],
                    borderHoverColor: Colors.transparent,
                    borderWidth: 1.5,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.grey[700],
                    iconHoverColor: Colors.grey[700],
                    iconFunction: () {},
                  ),
                  // memberIcon(
                  //   iconPath: 'icon/right_chatroom/assistant.png',
                  // ),
                  // memberIcon(
                  //   iconPath: 'icon/right_chatroom/pin.png',
                  // ),
                  // Padding(
                  //     padding: EdgeInsets.only(right: 5),
                  //     child:
                  //       memberIcon(icon: Icons.person_add),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 5),
                  //   child:
                  //   memberIcon(icon: Icons.push_pin_rounded),
                  //
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
