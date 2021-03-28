import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyIcon.dart';
import 'memberStudent.dart';

class Member extends StatefulWidget {
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  Color _hoverGrey = Colors.grey[300];
  Color _allWhite = Colors.white;
  Color _allRed = Colors.red[700];
  Color _allBlue = Colors.blue[700];

  bool _pinIsPressed = true;
  Color _pinBorderColor = Colors.blue[700];
  Color _pinColor = Colors.blue[700];
  Color _inkColor = Colors.white;
  Color _hoverColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Container(
            //text
            height: 40,
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "In this classroom",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.4,
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
          //成員
          child: ListView(
            children: [
              Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              memberTeacher(),
              memberStudent(
                stuName: 'Heath Kelley',
                stuPicUrl: 'img/thumbnail/02.jpg',
              ),
              memberStudent(
                stuName: 'Tristram Newton',
                stuPicUrl: 'img/thumbnail/03.jpg',
              ),
              memberStudent(
                stuName: 'Craig Geis',
                stuPicUrl: 'img/thumbnail/04.jpg',
              ),
              memberStudent(
                stuName: 'Quinn Slater',
                stuPicUrl: 'img/thumbnail/05.jpg',
              ),
              memberStudent(
                stuName: 'Marc Osborne',
                stuPicUrl: 'img/thumbnail/06.jpg',
              ),
              memberStudent(
                stuName: 'Halbert Ruell',
                stuPicUrl: 'img/thumbnail/07.jpg',
              ),
              memberStudent(
                stuName: 'Sally Covington',
                stuPicUrl: 'img/thumbnail/08.jpg',
              ),
              memberStudent(
                stuName: 'Ivory Castro',
                stuPicUrl: 'img/thumbnail/09.jpg',
              ),
              memberStudent(
                stuName: 'Halle Schneider',
                stuPicUrl: 'img/thumbnail/10.jpg',
              ),
              memberStudent(
                stuName: 'Wanda Clayton',
                stuPicUrl: 'img/thumbnail/11.jpg',
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget memberTeacher() {
    return AspectRatio(
      aspectRatio: 350 / 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Flexible(
                //   flex: 40,
                //     child:
                // ),
                Stack(
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        'img/thumbnail/01.jpg',
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    //color: Colors.amber,
                    width: 125,
                    child: Row(
                      children: [
                        Text(
                          'Lilly Chester',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4,
                          ),
                        ),
                        Text(
                          ' (You)',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                MyIcon(
                  iconUrl: 'icon/Seminar/pin.png',
                  iconHoverUrl: 'icon/Seminar/pin_active.png',
                  iconSize: 30,
                  borderActiveColor: Colors.transparent,
                  borderHoverColor: Colors.transparent,
                  borderWidth: 1.5,
                  splashColor: Colors.transparent,
                  iconColor: Colors.transparent,
                  iconHoverColor: Colors.transparent,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
