import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Notifications.dart';

import 'package:flutter_application_1/widget/SeminarWorkingArea.dart';
import 'package:flutter_application_1/widget/StartSeminar.dart';
import 'package:flutter_application_1/screen/Seminar.dart';

class DividerRandom extends StatefulWidget {
  @override
  _DividerRandomState createState() => _DividerRandomState();
}

class _DividerRandomState extends State<DividerRandom> {
  double textOpacity = 0;
  bool ifConfirm = false;
  void _setTextOpacity() {
    setState(() {
      if (ifConfirm) {
        textOpacity = 0;
        ifConfirm = false;
      } else if (!ifConfirm) {
        ifConfirm = true;
        textOpacity = 1;
      }
    });
  }

  Color hoverColor = Colors.black;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      hoverColor = Colors.black;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      hoverColor = Colors.blueAccent[700];
    });
  }

// onEnter: _incrementEnter,
// onHover: _updateLocation,
// onExit: _incrementExit,

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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
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
                                    'assets/icon/SeminarDivider/random_blue.png',
                                    width: 40,
                                  ),
                                ),
                                Text(
                                  'Random',
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
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                    child: Text(
                      'There are 53 students int his classroom, random divide students into',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 60,
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
                              //hintText: 'Search',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                              fontFamily: 'Segoe',
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Groups',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: MouseRegion(
                      onEnter: _incrementEnter,
                      onHover: _updateLocation,
                      onExit: _incrementExit,
                      child: OutlinedButton(
                        onPressed: _setTextOpacity,
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: hoverColor, width: 1.5),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 12,
                              color: hoverColor,
                              fontFamily: 'Segoe',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: textOpacity,
                    child: Text(
                      '5,5,5,5,5,5,5,6,6,6',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: textOpacity,
                    child: Text(
                      'people in wach group',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: textOpacity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Text(
                        '(7 groups of 5 people, 3 groups of 6 people)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
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
