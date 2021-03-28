import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/right_chatroom.dart';
import 'package:flutter_application_1/widget/BottomTools.dart';
import 'package:flutter_application_1/widget/Notifications.dart';
import 'package:flutter_application_1/widget/Notifications_fix.dart';
import 'package:flutter_application_1/widget/WhiteBoardLeftTool.dart';
import 'package:flutter_application_1/widget/WhiteBoardArea.dart';
//import 'package:flutter_application_1/widget/left_tool.dart';

class DrawingArea {
  Offset point;
  Paint areaPaint;

  DrawingArea({this.areaPaint, this.point});
}

class WhiteBoard extends StatefulWidget {
  @override
  _WhiteBoardState createState() => _WhiteBoardState();
}

class _WhiteBoardState extends State<WhiteBoard> {
  List<DrawingArea> points = [];
  //List<Offset> eraserPoints = [];

  Color selectedColor;
  double strokeWidth;

  bool ifPenActive = false;
  bool ifCursorActive = true;
  bool ifEraserActive = false;
  bool ifRectActive = false;
  bool ifCircleActive = false;
  bool ifLineActive = false;
  bool ifCurveActive = false;
  bool ifAddedActive = false;
  void updateId(bool newifPenActive) {
    setState(() {
      ifPenActive = newifPenActive;
      //print('Pen:${ifPenActive}');
      //print('Eraser:${ifEraserActive}');
    });
  }

  void updateId2(bool newifCursorActive) {
    setState(() {
      ifCursorActive = newifCursorActive;
      //print('Cursor:${ifCursorActive}');
    });
  }

  void updateId3(bool newifEraserActive) {
    setState(() {
      ifEraserActive = newifEraserActive;
      //print('Eraser:${ifEraserActive}');
    });
  }

  void updateId4(bool newifRectActive) {
    setState(() {
      ifRectActive = newifRectActive;
      //print('Rect:${ifRectActive}');
    });
  }

  void updateId5(bool newifCircleActive) {
    setState(() {
      ifCircleActive = newifCircleActive;
      //print('Circle:${ifCircleActive}');
    });
  }

  void updateId6(bool newifLineActive) {
    setState(() {
      ifLineActive = newifLineActive;
      //print('Line:${ifLineActive}');
    });
  }

  void updateId7(bool newifCurveActive) {
    setState(() {
      ifCurveActive = newifCurveActive;
      //print('Curve:${ifCurveActive}');
    });
  }

  void updateId8(bool newifAddedActive) {
    setState(() {
      ifAddedActive = newifAddedActive;
      print('text:${ifAddedActive}');
    });
  }

  Color textColor = Colors.black;
  bool ifAddTool = false;
  bool ifPressAddTool = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      //ifPressAddTool = false;
      print(ifPressAddTool);
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      //ifPressAddTool = true;
      print(ifPressAddTool);
    });
  }

  @override
  void initState() {
    super.initState();
    selectedColor = Colors.black;
    strokeWidth = 5;
  }

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
              child: Board_Left_tool(
                textShow: ifPressAddTool,
                onSonChanged: (bool newifPenActive) {
                  updateId(newifPenActive);
                },
                onCursorChanged: (bool newifCursorActive) {
                  updateId2(newifCursorActive);
                },
                onEraserChanged: (bool newifEraserActive) {
                  updateId3(newifEraserActive);
                },
                onRectChanged: (bool newifRectActive) {
                  updateId4(newifRectActive);
                },
                onCircleChanged: (bool newifCircleActive) {
                  updateId5(newifCircleActive);
                },
                onLineChanged: (bool newifLineActive) {
                  updateId6(newifLineActive);
                },
                onCurveChanged: (bool newifCurveActive) {
                  updateId7(newifCurveActive);
                },
                onAddToolChanged: (bool newifAddedActive) {
                  updateId8(newifAddedActive);
                },
              ),
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
                  child: Notifications_fix(),
                ),
                Expanded(
                  //WorkingArea
                  flex: 880,
                  child: Stack(children: <Widget>[
                    Material(
                      color: Colors.grey[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 40),
                            child: Text(
                              'White Board',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Segoe',
                                fontSize: 16,
                                letterSpacing: 1.6,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              //paintingArea
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey[200],
                                  width: 2,
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.72,
                              height: MediaQuery.of(context).size.height * 0.72,
                              child: GestureDetector(
                                onPanDown: (details) {
                                  if (ifPenActive) {
                                    this.setState(() {
                                      points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = selectedColor
                                            ..strokeWidth = 3));
                                    });
                                  } else if (ifEraserActive == true) {
                                    //points.clear();
                                    this.setState(() {
                                      points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = Colors.white
                                            ..strokeWidth = 20));
                                    });
                                  }
                                },
                                onPanUpdate: (details) {
                                  if (ifPenActive) {
                                    this.setState(() {
                                      points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = selectedColor
                                            ..strokeWidth = 3));
                                    });
                                  } else if (ifEraserActive == true) {
                                    //points.clear();
                                    this.setState(() {
                                      points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = Colors.white
                                            ..strokeWidth = 20));
                                    });
                                  }
                                },
                                onPanEnd: (details) {
                                  this.setState(() {
                                    points.add(null);
                                  });
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: CustomPaint(
                                    painter: MyCustomPainter(
                                      points: points,
                                      //eraserPoints: eraserPoints
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: ifAddedActive,
                      child: Container(
                        margin: EdgeInsets.only(top: 400),
                        width: 210,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular((0.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius: 3,
                                  spreadRadius: 0.2),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            RawMaterialButton(
                              constraints:
                                  BoxConstraints(maxHeight: 30, minHeight: 30),
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                width: 180,
                                height: 30,
                                child: Text(
                                  'Slides',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                width: 180,
                                height: 30,
                                child: Text(
                                  'Seminar',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              270, 500, 890, 150),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        (0.0)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey[400],
                                                      blurRadius: 3,
                                                      spreadRadius: 0.2),
                                                ]),
                                            child: MouseRegion(
                                              onEnter: _incrementEnter,
                                              onHover: _updateLocation,
                                              onExit: _incrementExit,
                                              child: RawMaterialButton(
                                                onPressed: () {
                                                  setState(() {
                                                    ifAddTool = !ifAddTool;
                                                    ifPressAddTool =
                                                        !ifPressAddTool;
                                                  });
                                                },
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Visibility(
                                                      visible: ifPressAddTool,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 120,
                                                        height: 120,
                                                        child: Image.asset(
                                                            'img/LeftTools/addText.png'),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: !ifPressAddTool,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        width: 120,
                                                        height: 120,
                                                        child: Image.asset(
                                                            'img/LeftTools/addText_hover.png'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    barrierColor: Colors.transparent);
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                width: 180,
                                height: 30,
                                child: Text(
                                  'Tools',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                width: 180,
                                height: 30,
                                child: Text(
                                  'Rooms',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
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
            flex: 380,
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

class MyCustomPainter extends CustomPainter {
  List<DrawingArea> points;
  //List<Offset> eraserPoints;
  Color color;
  double strokeWidth;

  //bool ifPenActive;

  MyCustomPainter({this.points, this.color, this.strokeWidth});
  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
///////PEN//////
    // Paint paint = Paint();
    // paint.color = color;
    // paint.strokeWidth = strokeWidth;
    // paint.isAntiAlias = true;
    // paint.strokeCap = StrokeCap.round;
    for (int i = 0; i < points.length; i++) {
      if (points[i] != null && points[i + 1] != null) {
        Paint paint = points[i].areaPaint;
        canvas.drawLine(points[i].point, points[i + 1].point, paint);
        //canvas.drawPoints(PointMode.points, [points[i]], paint);
      } else if (points[i] != null && points[i + 1] == null) {
        Paint paint = points[i].areaPaint;
        canvas.drawPoints(PointMode.points, [points[i].point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
