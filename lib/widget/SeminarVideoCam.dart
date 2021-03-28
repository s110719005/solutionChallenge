import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyIcon.dart';
import 'package:flutter_application_1/widget/SeminarWorkingArea.dart';

class SeminarVideoCam1 extends StatefulWidget {
  @override
  _SeminarVideoCam1State createState() => _SeminarVideoCam1State();
}

class _SeminarVideoCam1State extends State<SeminarVideoCam1> {
  Color borderColor = Colors.transparent;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      borderColor = Colors.transparent;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      borderColor = Colors.blueAccent[700];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MouseRegion(
            onEnter: _incrementEnter,
            onHover: _updateLocation,
            onExit: _incrementExit,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(7)),
                border: Border.all(width: 1.0, color: borderColor),
              ),
              width: 480,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  'img/videoCam/11.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 200,
          child: ListView(
            children: [
              GridView.count(
                childAspectRatio: 240 / 150,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  StudentVideoCam(videoCamUrl: 'img/videoCam/02.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/06.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/04.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/05.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/10.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/07.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/08.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/09.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/01.jpg'),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: new Border(
                top: BorderSide(
              color: Colors.grey[350],
              width: 1,
            )),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          height: 100,
          child: MyIcon(
            iconUrl: 'assets/icon/Seminar/muteall.png',
            iconHoverUrl: 'assets/icon/Seminar/muteall_active.png',
            iconSize: 60,
            borderActiveColor: Colors.red[700],
            borderHoverColor: Colors.transparent,
            borderWidth: 2,
            splashColor: Colors.grey[200],
            iconColor: Colors.grey[700],
            iconHoverColor: Colors.grey[700],
            iconFunction: () {},
          ),
        ),
      ],
    );
  }
}

class SeminarVideoCam2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 500,
          child: ListView(
            children: [
              GridView.count(
                childAspectRatio: 240 / 150,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  GroupVideoCam(
                    groupNum: '1',
                  ),
                  GroupVideoCam(
                    groupNum: '2',
                  ),
                  GroupVideoCam(
                    groupNum: '3',
                  ),
                  GroupVideoCam(
                    groupNum: '4',
                  ),
                  GroupVideoCam(
                    groupNum: '5',
                  ),
                  GroupVideoCam(
                    groupNum: '6',
                  ),
                  GroupVideoCam(
                    groupNum: '7',
                  ),
                  GroupVideoCam(
                    groupNum: '8',
                  ),
                  GroupVideoCam(
                    groupNum: '9',
                  ),
                  GroupVideoCam(
                    groupNum: '10',
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: new Border(
                top: BorderSide(
              color: Colors.grey[350],
              width: 1,
            )),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          height: 100,
          child: MyIcon(
            iconUrl: 'assets/icon/Seminar/muteall.png',
            iconHoverUrl: 'assets/icon/Seminar/muteall_active.png',
            iconSize: 60,
            borderActiveColor: Colors.red[700],
            borderHoverColor: Colors.transparent,
            borderWidth: 2,
            splashColor: Colors.grey[200],
            iconColor: Colors.grey[700],
            iconHoverColor: Colors.grey[700],
            iconFunction: () {},
          ),
        ),
      ],
    );
  }
}

class SeminarVideoCam3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 500,
          child: ListView(
            children: [
              GridView.count(
                childAspectRatio: 240 / 150,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  StudentVideoCam(videoCamUrl: 'img/videoCam/02.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/08.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/04.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/05.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/06.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/07.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/09.jpg'),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: new Border(
                top: BorderSide(
              color: Colors.grey[350],
              width: 1,
            )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: MyIcon(
                iconUrl: 'assets/icon/Seminar/muteall.png',
                iconHoverUrl: 'assets/icon/Seminar/muteall_active.png',
                iconSize: 60,
                borderActiveColor: Colors.red[700],
                borderHoverColor: Colors.transparent,
                borderWidth: 2,
                splashColor: Colors.grey[200],
                iconColor: Colors.grey[700],
                iconHoverColor: Colors.grey[700],
                iconFunction: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: MyIcon(
                iconUrl: 'assets/icon/Seminar/leave.png',
                iconHoverUrl: 'assets/icon/Seminar/pin_active.png',
                iconSize: 60,
                borderActiveColor: Colors.blueAccent[700],
                borderHoverColor: Colors.transparent,
                borderWidth: 2,
                splashColor: Colors.grey[200],
                iconColor: Colors.red[700],
                iconHoverColor: Colors.red[700],
                iconFunction: () {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            SeminarPage6(),
                        transitionDuration: Duration(seconds: 0),
                      ));
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SeminarVideoCam4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 500,
          child: ListView(
            children: [
              GridView.count(
                childAspectRatio: 240 / 150,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  StudentVideoCam(videoCamUrl: 'img/videoCam/02.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/08.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/04.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/05.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/06.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/07.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/09.jpg'),
                  GroupVideoCam(
                    groupNum: '2',
                  ),
                  GroupVideoCam(
                    groupNum: '3',
                  ),
                  GroupVideoCam(
                    groupNum: '4',
                  ),
                  GroupVideoCam(
                    groupNum: '5',
                  ),
                  GroupVideoCam(
                    groupNum: '6',
                  ),
                  GroupVideoCam(
                    groupNum: '7',
                  ),
                  GroupVideoCam(
                    groupNum: '8',
                  ),
                  GroupVideoCam(
                    groupNum: '9',
                  ),
                  GroupVideoCam(
                    groupNum: '10',
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: new Border(
                top: BorderSide(
              color: Colors.grey[350],
              width: 1,
            )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: MyIcon(
                iconUrl: 'assets/icon/Seminar/muteall.png',
                iconHoverUrl: 'assets/icon/Seminar/muteall_active.png',
                iconSize: 60,
                borderActiveColor: Colors.red[700],
                borderHoverColor: Colors.transparent,
                borderWidth: 2,
                splashColor: Colors.grey[200],
                iconColor: Colors.grey[700],
                iconHoverColor: Colors.grey[700],
                iconFunction: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: MyIcon(
                iconUrl: 'assets/icon/Seminar/video_active.png',
                iconHoverUrl: 'assets/icon/Seminar/pin_active.png',
                iconSize: 60,
                borderActiveColor: Colors.blueAccent[700],
                borderHoverColor: Colors.transparent,
                borderWidth: 2,
                splashColor: Colors.grey[200],
                iconColor: Colors.red[700],
                iconHoverColor: Colors.red[700],
                iconFunction: () {
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            SeminarPage6(),
                        transitionDuration: Duration(seconds: 0),
                      ));
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class VideoStudentCam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23),
          height: 500,
          child: ListView(
            children: [
              GridView.count(
                childAspectRatio: 240 / 150,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  StudentVideoCam(videoCamUrl: 'img/videoCam/02.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/08.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/04.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/05.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/06.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/07.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/09.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/02.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/08.jpg'),
                  StudentVideoCam(videoCamUrl: 'img/videoCam/04.jpg'),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: new Border(
                top: BorderSide(
              color: Colors.grey[350],
              width: 1,
            )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 100,
              child: MyIcon(
                iconUrl: 'assets/icon/Seminar/muteall.png',
                iconHoverUrl: 'assets/icon/Seminar/muteall_active.png',
                iconSize: 60,
                borderActiveColor: Colors.red[700],
                borderHoverColor: Colors.transparent,
                borderWidth: 2,
                splashColor: Colors.grey[200],
                iconColor: Colors.grey[700],
                iconHoverColor: Colors.grey[700],
                iconFunction: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StudentVideoCam extends StatefulWidget {
  final String videoCamUrl;
  StudentVideoCam({this.videoCamUrl});
  @override
  _StudentVideoCamState createState() => _StudentVideoCamState();
}

class _StudentVideoCamState extends State<StudentVideoCam> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        width: 240,
        height: 125,
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 240,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7.0),
                  child: Image.asset(
                    '${widget.videoCamUrl}',
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    MyIcon(
                      iconUrl: 'assets/icon/Seminar/pin.png',
                      iconHoverUrl: 'assets/icon/Seminar/pin_active.png',
                      iconSize: 25,
                      borderActiveColor: Colors.blueAccent[700],
                      borderHoverColor: Colors.transparent,
                      borderWidth: 1,
                      splashColor: Colors.grey[50],
                      iconColor: Colors.grey[700],
                      iconHoverColor: Colors.grey[700],
                      iconFunction: () {},
                    ),
                  ],
                ),
              ),
            ]));
  }
}

class GroupVideoCam extends StatefulWidget {
  final String groupNum;
  GroupVideoCam({this.groupNum});
  @override
  _GroupVideoCamState createState() => _GroupVideoCamState();
}

class _GroupVideoCamState extends State<GroupVideoCam> {
  bool ifActive = false;
  bool ifTextVisible = false;
  Color groupName = Colors.white;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      ifTextVisible = false;
      groupName = Colors.white;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      ifTextVisible = true;
      groupName = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        width: 240,
        height: 125,
        child: MouseRegion(
          onEnter: _incrementEnter,
          onHover: _updateLocation,
          onExit: _incrementExit,
          child: RawMaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        SeminarPage7(),
                    transitionDuration: Duration(seconds: 0),
                  ));
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${widget.groupNum}',
                          style: TextStyle(
                            fontSize: 50,
                            color: groupName,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.6,
                          ),
                        ),
                        Visibility(
                          visible: ifTextVisible,
                          child: Text(
                            'Click to join',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Segoe',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.6,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: ifTextVisible,
                          child: Text(
                            'the discussion',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Segoe',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, top: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MyIcon(
                            iconUrl: 'assets/icon/Seminar/pin.png',
                            iconHoverUrl: 'assets/icon/Seminar/pin_active.png',
                            iconSize: 25,
                            borderActiveColor: Colors.blueAccent[700],
                            borderHoverColor: Colors.transparent,
                            borderWidth: 1,
                            splashColor: Colors.grey[50],
                            iconColor: Colors.grey[700],
                            iconHoverColor: Colors.grey[700],
                            iconFunction: () {},
                          ),
                          SizedBox(height: 6),
                          MyIcon(
                            iconUrl: 'assets/icon/BottomToolBar/mute.png',
                            iconHoverUrl:
                                'assets/icon/BottomToolBar/mute_active.png',
                            iconSize: 25,
                            borderActiveColor: Colors.red[700],
                            borderHoverColor: Colors.transparent,
                            borderWidth: 1,
                            splashColor: Colors.grey[50],
                            iconColor: Colors.grey[700],
                            iconHoverColor: Colors.grey[700],
                            iconFunction: () {},
                          ),
                          SizedBox(height: 6),
                          InkWell(
                            child: MyIcon(
                              iconUrl:
                                  'assets/icon/BottomToolBar/video_active.png',
                              iconHoverUrl:
                                  'assets/icon/BottomToolBar/mute.png',
                              iconSize: 25,
                              borderActiveColor: Colors.black,
                              borderHoverColor: Colors.transparent,
                              borderWidth: 2,
                              splashColor: Colors.grey[50],
                              iconFunction: () {
                                print('hi');
                                Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              SeminarPage8(),
                                      transitionDuration: Duration(seconds: 0),
                                    ));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
