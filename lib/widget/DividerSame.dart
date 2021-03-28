import 'package:flutter/material.dart';

import 'package:flutter_application_1/widget/SeminarWorkingArea.dart';
import 'package:flutter_application_1/widget/StartSeminar.dart';

class DividerSame extends StatelessWidget {
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
                                Text(
                                  'Same as last time',
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
                  SizedBox(height: 50),
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
                  Text(
                    '5,5,5,5,5,5,5,6,6,6',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4,
                    ),
                  ),
                  Text(
                    'people in wach group',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      '(7 groups of 5 people,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Text(
                      '3 groups of 6 people)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
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
