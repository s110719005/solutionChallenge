import 'package:flutter/material.dart';

import 'package:flutter_application_1/widget/SeminarWorkingArea.dart';
import 'package:flutter_application_1/widget/StartSeminar.dart';

class DividerAssign extends StatefulWidget {
  @override
  _DividerAssignState createState() => _DividerAssignState();
}

class _DividerAssignState extends State<DividerAssign> {
  double setOpacity = 0;
  bool ifSetOpacity = false;
  void _setGroupOpacity() {
    setState(() {
      if (!ifSetOpacity) {
        setOpacity = 1;
        ifSetOpacity = true;
      } else if (ifSetOpacity) {
        setOpacity = 0;
        ifSetOpacity = false;
      }
    });
  }

  Color textColor = Colors.black;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Colors.black;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Colors.blueAccent[700];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Divide students into group by',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'Segoe',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.6,
              ),
            ),
          ),
          Material(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Container(
              width: 320,
              //height: 430,
              decoration: BoxDecoration(
                  border: new Border.all(
                    color: Colors.blueAccent[700],
                    width: 2,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10), bottom: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 3,
                        spreadRadius: 0.2),
                  ] // 也可控件一边圆角大小
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          spreadRadius: 0.2),
                    ] // 也可控件一边圆角大小
                        ),
                    child: Material(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              SeminarPage1(),
                                      transitionDuration: Duration(seconds: 0),
                                    ));
                              },
                              icon: Icon(Icons.arrow_left),
                              color: Colors.grey[600],
                              iconSize: 40,
                              splashRadius: 25,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Image.asset(
                                    'assets/icon/SeminarDivider/assign_blue.png',
                                    width: 40,
                                  ),
                                ),
                                Text(
                                  'Assign',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blueAccent[700],
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.6,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_left,
                              size: 40,
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                      border: new Border(
                        bottom: BorderSide(color: Colors.grey[300], width: 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Text(
                        'Confirm group members by pressing the button/ Enter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 8, left: 5),
                        margin: EdgeInsets.all(10),
                        width: 270,
                        height: 25,
                        decoration: BoxDecoration(
                          border: new Border.all(
                            color: Colors.grey[300],
                            width: 1,
                          ),
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Expanded(
                          child: TextField(
                            cursorColor: Colors.transparent,
                            cursorWidth: 0.2,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[900],
                              fontFamily: 'Segoe',
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Group',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: <Widget>[
                        GroupButton(
                          groupNum: 'Group 1',
                          groupName: '1',
                        ),
                        GroupButton(
                          groupNum: 'Group 2',
                          groupName: '2',
                        ),
                        GroupButton(
                          groupNum: 'Group 3',
                          groupName: '3',
                        ),
                        Opacity(
                          opacity: setOpacity,
                          child: GroupButton(
                            groupNum: 'Group 4',
                            groupName: '4',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                      border: new Border(
                        bottom: BorderSide(color: Colors.grey[300], width: 1),
                      ),
                    ),
                  ), //confirm button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Member',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 20, bottom: 10),
                        child: MouseRegion(
                          onEnter: _incrementEnter,
                          onHover: _updateLocation,
                          onExit: _incrementExit,
                          child: OutlinedButton(
                            onPressed: () {
                              //add group
                              _setGroupOpacity();
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: textColor, width: 1.5),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 20),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textColor,
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 28),
                    margin: EdgeInsets.only(bottom: 10),
                    //height: 300,
                    constraints: BoxConstraints(maxHeight: 80),
                    child: ListView(
                      children: [
                        GridView.count(
                          childAspectRatio: 25 / 30,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          children: [
                            StudentButton(
                              studentName: 'Ivory',
                              studentPicUrl: 'assets/img/thumbnail/01.jpg',
                            ),
                            StudentButton(
                              studentName: 'Harley',
                              studentPicUrl: 'assets/img/thumbnail/02.jpg',
                            ),
                            StudentButton(
                              studentName: 'Ellen',
                              studentPicUrl: 'assets/img/thumbnail/03.jpg',
                            ),
                            StudentButton(
                              studentName: 'Eloise',
                              studentPicUrl: 'assets/img/thumbnail/04.jpg',
                            ),
                            StudentButton(
                              studentName: 'Timothea',
                              studentPicUrl: 'assets/img/thumbnail/05.jpg',
                            ),
                            StudentButton(
                              studentName: 'Howell',
                              studentPicUrl: 'assets/img/thumbnail/06.jpg',
                            ),
                            StudentButton(
                              studentName: 'Clarissa',
                              studentPicUrl: 'assets/img/thumbnail/07.jpg',
                            ),
                            StudentButton(
                              studentName: 'Ulric',
                              studentPicUrl: 'assets/img/thumbnail/08.jpg',
                            ),
                            StudentButton(
                              studentName: 'Elizabeth',
                              studentPicUrl: 'assets/img/thumbnail/09.jpg',
                            ),
                            StudentButton(
                              studentName: 'Muriel',
                              studentPicUrl: 'assets/img/thumbnail/10.jpg',
                            ),
                            StudentButton(
                              studentName: 'Melinda',
                              studentPicUrl: 'assets/img/thumbnail/11.jpg',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  RawMaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                SeminarPage6(),
                            transitionDuration: Duration(seconds: 0),
                          ));
                    },
                    fillColor: Colors.blueAccent[700],
                    child: Container(
                      width: 320,
                      //height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Start Class',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.6,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GroupButton extends StatefulWidget {
  final String groupNum;
  final String groupName;
  GroupButton({this.groupNum, this.groupName});
  @override
  _GroupButtonState createState() => _GroupButtonState();
}

class _GroupButtonState extends State<GroupButton> {
  Color textColor = Colors.black;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Colors.black;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Colors.blueAccent[700];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          MouseRegion(
            onEnter: _incrementEnter,
            onHover: _updateLocation,
            onExit: _incrementExit,
            child: RawMaterialButton(
              constraints: BoxConstraints(
                  maxWidth: 54, minWidth: 54, maxHeight: 54, minHeight: 54),
              hoverColor: Colors.blueAccent[700],
              //splashColor: Colors.amber,
              //focusColor: Colors.amber,
              //highlightColor: Colors.amber,
              onPressed: () {
                //textColor = Colors.red;
              },

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[350],
                  child: Center(
                      child: Text(
                    '${widget.groupName}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.6,
                    ),
                  )),
                ),
              ),
              // CircleAvatar(
              //   backgroundColor: Colors.grey[350],
              //   //backgroundImage: AssetImage('${widget.groupPicUrl}'),
              //   radius: 25,
              // ),
            ),
          ),
          Text(
            '${widget.groupNum}',
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontFamily: 'Segoe',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class StudentButton extends StatefulWidget {
  final String studentName;
  final String studentPicUrl;
  StudentButton({this.studentName, this.studentPicUrl});
  @override
  _StudentButtonState createState() => _StudentButtonState();
}

class _StudentButtonState extends State<StudentButton> {
  double checkOpacity = 0;
  bool ifClicked = false;

  void _ChangeOpacity() {
    setState(() {
      if (ifClicked) {
        checkOpacity = 0;
        ifClicked = false;
      } else if (!ifClicked) {
        checkOpacity = 1;
        ifClicked = true;
      }
    });
  }

  Color textColor = Colors.black;
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;
  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      textColor = Colors.black;
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Colors.blueAccent[700];
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 16),
      child: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            //overflow: Overflow.visible,
            children: <Widget>[
              MouseRegion(
                onEnter: _incrementEnter,
                onHover: _updateLocation,
                onExit: _incrementExit,
                child: RawMaterialButton(
                  constraints: BoxConstraints(
                      maxWidth: 54, minWidth: 54, maxHeight: 54, minHeight: 54),
                  hoverColor: Colors.blueAccent[700],
                  onPressed: () {
                    _ChangeOpacity();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('${widget.studentPicUrl}'),
                    radius: 25,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                child: Opacity(
                  opacity: checkOpacity,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10)),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '${widget.studentName}',
            style: TextStyle(
              fontSize: 10,
              color: textColor,
              fontFamily: 'Segoe',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
