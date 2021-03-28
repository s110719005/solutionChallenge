import 'package:flutter/material.dart';
import 'boxRotateAnimation.dart';
import 'menuIcon.dart';

typedef void BoolCallback(bool id);

class Board_Left_tool extends StatefulWidget {
  final BoolCallback onSonChanged;
  final BoolCallback onCursorChanged;
  final BoolCallback onEraserChanged;
  final BoolCallback onRectChanged;
  final BoolCallback onCircleChanged;
  final BoolCallback onLineChanged;
  final BoolCallback onCurveChanged;
  final BoolCallback onAddToolChanged;
  final bool textShow;
  Board_Left_tool(
      {@required this.onSonChanged,
      @required this.onCursorChanged,
      @required this.onCircleChanged,
      @required this.onCurveChanged,
      @required this.onEraserChanged,
      @required this.onLineChanged,
      @required this.onRectChanged,
      @required this.onAddToolChanged,
      this.textShow});

  @override
  _Board_Left_toolState createState() => _Board_Left_toolState();
}

class _Board_Left_toolState extends State<Board_Left_tool> {
  List<String> hT = [
    'Mouse',
    'Text',
    'Pen',
    'Eraser',
    'Rectangle',
    'Circle',
    'Line',
    'Curve'
  ];
  bool _isBoardPressed = false;
  Color _boardBorderColor = Colors.transparent;
  Color _boardColor = Colors.grey[600];
  bool _isdrawPressed = false;
  Color _drawBorderColor = Colors.transparent;
  Color _drawColor = Colors.grey[600];
  bool ifAddTool = false;
  bool ifPressAddTool = false;

  Color textColor = Colors.black;
  Color borderNowColor = Colors.transparent;
  Color iconNowColor;

  bool ifActive = false;
//////////////////////////////PAINT
  bool ifCursorActive = false;
  bool ifPenActive = false;
  bool ifEraserActive = false;
  bool ifRectActive = false;
  bool ifCircleActive = false;
  bool ifLineActive = false;
  bool ifCurveActive = false;

  //int elementId = 3;
  bool ifAddedTool = false;
  bool ifAddedTool2 = false;
  void updateId(bool newifAddTool) {
    setState(() {
      ifAddedTool = newifAddTool;
      print('ifAddedTool:${ifAddedTool}');
      //print('Eraser:${ifEraserActive}');
    });
  }

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      ifPressAddTool = false;
      print('hoverEnd');
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      ifPressAddTool = true;
      print('hover');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 80,
      height: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      //上下邊界
      child: Column(
        children: [
          Expanded(
            flex: 110,
            child: Material(
              color: Colors.white,
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Icon_TOP('Back', 'icon/left_tool/back.png'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Icon_TOP('Next', 'icon/left_tool/next.png'),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            flex: 440,
            child: Material(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Show_Icon2('Mouse', '/icon/left_tool/Mouse.png', 0, () {
                    if (ifCursorActive == false) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifCursorActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Visibility(
                    visible: widget.textShow,
                    child:
                        Show_Icon2('Text', '/icon/left_tool/text.png', 1, null),
                  ),
                  Show_Icon2('Pen', '/icon/left_tool/pen.png', 2, () {
                    if (ifPenActive == false) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = true;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifPenActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Show_Icon2('Eraser', '/icon/left_tool/Eraser.png', 3, () {
                    if (ifEraserActive == false) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = false;
                        ifEraserActive = true;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;

                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifEraserActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Show_Icon2('Rectangle', '/icon/left_tool/rectangle.png', 4,
                      () {
                    if (ifRectActive == false) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = true;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifRectActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Show_Icon2('Circle', '/icon/left_tool/Circle.png', 5, () {
                    if (ifCircleActive == false) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = true;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifCircleActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Show_Icon2('Line', '/icon/left_tool/Line.png', 6, () {
                    if (ifLineActive == false) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = true;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifLineActive == true) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                  Show_Icon2('Curve', '/icon/left_tool/Curve.png', 7, () {
                    if (!ifCurveActive) {
                      setState(() {
                        ifCursorActive = false;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = true;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    } else if (ifCurveActive) {
                      setState(() {
                        ifCursorActive = true;
                        ifPenActive = false;
                        ifEraserActive = false;
                        ifRectActive = false;
                        ifCircleActive = false;
                        ifLineActive = false;
                        ifCurveActive = false;
                        widget.onCursorChanged(ifPenActive);
                        widget.onSonChanged(ifPenActive);
                        widget.onEraserChanged(ifEraserActive);
                        widget.onRectChanged(ifRectActive);
                        widget.onCircleChanged(ifCircleActive);
                        widget.onLineChanged(ifLineActive);
                        widget.onCurveChanged(ifCurveActive);
                      });
                    }
                  }),
                ],
              ),
            ),
          ),
          Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            flex: 340,
            child: Material(
                color: Colors.white,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: DrawIcon('Draw Lots', 'icon/left_tool/draw.png'),
                    ),
                    Flexible(
                      flex: 1,
                      child:
                          BoardIcon('White Board', 'icon/left_tool/board.png'),
                    ),
                    Flexible(
                      flex: 1,
                      child: Stack(
                          alignment: AlignmentDirectional.center,
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            MouseRegion(
                              child: RawMaterialButton(
                                onPressed: () {
                                  print('hi');
                                  setState(() {
                                    //ifPressAddTool = !ifPressAddTool;
                                  });
                                  showDialog(
                                      context: context,
                                      builder: (_) => Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                60, 500, 1100, 100),
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
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  RawMaterialButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      width: 180,
                                                      height: 40,
                                                      child: Text(
                                                        'Slides',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: textColor,
                                                          fontFamily: 'Segoe',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  RawMaterialButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      width: 180,
                                                      height: 40,
                                                      child: Text(
                                                        'Seminar',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: textColor,
                                                          fontFamily: 'Segoe',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  RawMaterialButton(
                                                    onPressed: () {
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (_) => Padding(
                                                                    padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            270,
                                                                            500,
                                                                            890,
                                                                            150),
                                                                    child:
                                                                        Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          borderRadius:
                                                                              BorderRadius.circular((0.0)),
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                                color: Colors.grey[400],
                                                                                blurRadius: 3,
                                                                                spreadRadius: 0.2),
                                                                          ]),
                                                                      child:
                                                                          MouseRegion(
                                                                        onEnter:
                                                                            _incrementEnter,
                                                                        onHover:
                                                                            _updateLocation,
                                                                        onExit:
                                                                            _incrementExit,
                                                                        child:
                                                                            RawMaterialButton(
                                                                          onPressed:
                                                                              () {
                                                                            setState(() {
                                                                              ifAddTool = !ifAddTool;
                                                                              ifPressAddTool = !ifPressAddTool;
                                                                            });
                                                                          },
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.stretch,
                                                                            children: [
                                                                              Visibility(
                                                                                visible: ifPressAddTool,
                                                                                child: Container(
                                                                                  padding: EdgeInsets.all(10),
                                                                                  width: 120,
                                                                                  height: 120,
                                                                                  child: Image.asset('img/LeftTools/addText.png'),
                                                                                ),
                                                                              ),
                                                                              Visibility(
                                                                                visible: !ifPressAddTool,
                                                                                child: Container(
                                                                                  padding: EdgeInsets.all(10),
                                                                                  width: 120,
                                                                                  height: 120,
                                                                                  child: Image.asset('img/LeftTools/addText_hover.png'),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                          barrierColor: Colors
                                                              .transparent);
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      width: 180,
                                                      height: 40,
                                                      child: Text(
                                                        'Tools',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: textColor,
                                                          fontFamily: 'Segoe',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  RawMaterialButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      width: 180,
                                                      height: 40,
                                                      child: Text(
                                                        'Rooms',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: textColor,
                                                          fontFamily: 'Segoe',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                      barrierColor: Colors.transparent);
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            MenuIcon(
                              animateicon: Icons.add,
                              rotatedir: 0.125,
                              hoverText: 'Other Functions',
                              newIsPress: ifAddTool,
                              onAddToolChanged: (bool newifPenActive) {
                                updateId(newifPenActive);
                                setState(() {
                                  ifAddedTool2 = ifAddedTool;
                                  widget.onAddToolChanged(ifAddedTool2);
                                });
                              },
                            ),
                          ]),
                    ),
                    Flexible(
                      flex: 1,
                      child: BoxRotationAnimation(
                        iconPath: 'icon/left_tool/adjust.png',
                        rotatedir: 0.125,
                        hoverText: 'Edit Panels',
                      ),
                    ),
                    // Spacer(),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      flex: 1,
                      child: BoxRotationAnimation(
                        iconPath: 'icon/left_tool/setting.png',
                        rotatedir: -0.25,
                        hoverText: 'Setting',
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //button state color controller
  List<int> _iconbot_press = [0, 0, 0, 0]; //下欄按鈕狀態
  var press = [1, 0, 0, 0, 0, 0, 0, 0]; //中欄按鈕狀態

  Color _iconColor(int index) {
    if (press[index] == 0) {
      return Colors.grey[600];
    } else {
      return Colors.blue[700];
    }
  }

  Color _iconBorderColor(int index) {
    if (press[index] == 0) {
      return Colors.white;
    } else {
      return Colors.blue[700];
    }
  }

  Color _iconColorBot(int index) {
    if (_iconbot_press[index] == 0) {
      return Colors.grey[600];
    } else {
      return Colors.blue[700];
    }
  }

  Color _iconColorBorderBot(int index) {
    if (_iconbot_press[index] == 0) {
      return Colors.white;
    } else {
      return Colors.blue[700];
    }
  }

  //generate buttons
  Widget Icon_TOP(String hoverText, String iconPath) {
    return Tooltip(
        message: hoverText,
        verticalOffset: -12,
        margin: EdgeInsets.only(left: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        textStyle: TextStyle(
          fontSize: 12,
          fontFamily: 'Segoe',
          //letterSpacing: 1.28,
          color: Colors.grey,
        ),
        child: Transform.scale(
            scale: 1.5,
            child: IconButton(
              icon: Image.asset(iconPath),
              //iconSize: 24,
              color: Colors.grey[600],
              hoverColor: Colors.grey[300],
              splashRadius: 12,
              onPressed: () {},
            ))); //return
  }

  Widget Show_Icon2(
      String hoverText, String iconPath, int i, VoidCallback iconFunction) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Ink(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: _iconBorderColor(i), width: 1.5),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
            padding: EdgeInsets.all(0),
            child: Tooltip(
              message: hoverText,
              verticalOffset: -12,
              margin: EdgeInsets.only(left: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              textStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'Segoe',
                //letterSpacing: 1.28,
                color: Colors.grey,
              ),
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                  icon: Image.asset(iconPath, color: _iconColor(i)), //
                  hoverColor: Colors.grey[300],
                  splashRadius: 12,
                  onPressed: () {
                    setState(() {
                      // press = [1,0,0,0,0,0,0,0];
                      var index = press.indexOf(1); //上一次的鈕
                      print(index);
                      if (i == index) {
                        //取消
                        press = [1, 0, 0, 0, 0, 0, 0, 0];
                      } else {
                        press = [0, 0, 0, 0, 0, 0, 0, 0];
                        press[i] = 1;
                      }
                    });
                    iconFunction();
                    //print('clicked btn $i');
                  },
                ),
              ),
            )),
      ),
    );
  }

  Widget BoardIcon(String hoverText, String iconPath) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Ink(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue[700], width: 1.5),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
            padding: EdgeInsets.all(0),
            child: Tooltip(
              message: hoverText,
              verticalOffset: -12,
              margin: EdgeInsets.only(left: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              textStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'Segoe',
                //letterSpacing: 1.28,
                color: Colors.grey,
              ),
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                  icon: Image.asset(iconPath, color: Colors.blue[700]), //
                  hoverColor: Colors.grey[300],
                  splashRadius: 12,
                  onPressed: () {
                    setState(() {
                      // _isBoardPressed = !_isBoardPressed;
                      // if (_isBoardPressed) {
                      //   _boardColor = Colors.blue[700];
                      //   _boardBorderColor = Colors.blue[700];
                      // } else {
                      //   _boardColor = Colors.grey[600];
                      //   _boardBorderColor = Colors.transparent;
                    });
                    Navigator.of(context).pushNamed('/board');
                    //print('clicked btn $i');
                  },
                ),
              ),
            )),
      ),
    );
  }

  Widget DrawIcon(String hoverText, String iconPath) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Ink(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: _drawBorderColor, width: 1.5),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
            padding: EdgeInsets.all(0),
            child: Tooltip(
              message: hoverText,
              verticalOffset: -12,
              margin: EdgeInsets.only(left: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              textStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'Segoe',
                //letterSpacing: 1.28,
                color: Colors.grey,
              ),
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                  icon: Image.asset(iconPath, color: _drawColor), //
                  hoverColor: Colors.grey[300],
                  splashRadius: 12,
                  onPressed: () {
                    setState(
                      () {
                        _isdrawPressed = !_isdrawPressed;
                        if (_isdrawPressed) {
                          _drawColor = Colors.blue[700];
                          _drawBorderColor = Colors.blue[700];
                        } else {
                          _drawColor = Colors.grey[600];
                          _drawBorderColor = Colors.transparent;
                        }
                        showDialog(
                            context: context,
                            builder: (_) => DrawDetail(),
                            barrierColor: Colors.transparent);
                      },
                    );
                    //print('clicked btn $i');
                  },
                ),
              ),
            )),
      ),
    );
  }

  // IconButton Show_Icon(IconData icons,int i){
  //   //   return IconButton(
  //   //     icon: Icon(icons),
  //   //     color: _iconColor(i),
  //   //     hoverColor: Colors.grey[300],
  //   //     splashRadius: 20,
  //   //     onPressed: (){
  //   //       setState(() {
  //   //         // press = [1,0,0,0,0,0,0,0];
  //   //         var index = press.indexOf(1);//上一次的鈕
  //   //         print(index);
  //   //         if(i==index){//取消
  //   //           press = [1,0,0,0,0,0,0,0];
  //   //         }
  //   //         else{
  //   //           press = [0,0,0,0,0,0,0,0];
  //   //           press[i] = 1;
  //   //         }
  //   //       });
  //   //       //print('clicked btn $i');
  //   //     },
  //   //   );
  //   // }

  // Widget Icon_BOT(IconData icons, int i) {
  //   return Ink(
  //     padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
  //     decoration: BoxDecoration(
  //       border: Border.all(color: _iconColorBorderBot(i), width: 1.5),
  //       color: Colors.white,
  //       shape: BoxShape.circle,
  //     ),
  //     child: InkWell(
  //         borderRadius: BorderRadius.circular(1000),
  //         onTap: () {},
  //         child: Padding(
  //           padding: EdgeInsets.all(0),
  //           child: IconButton(
  //             icon: Icon(icons),
  //             color: _iconColorBot(i),
  //             hoverColor: Colors.grey[300],
  //             splashRadius: 20,
  //             onPressed: () {
  //               setState(() {
  //                 if (_iconbot_press[i] == 0) {
  //                   _iconbot_press[i] = 1;
  //                 }
  //                 else {
  //                   _iconbot_press[i] = 0;
  //                 }
  //               });
  //             },
  //           ),
  //         )
  //     ),
  //   );
  // }
}

class DrawDetail extends StatefulWidget {
  @override
  _DrawDetailState createState() => _DrawDetailState();
}

class _DrawDetailState extends State<DrawDetail> {
  Color textColor = Colors.black;
  Color borderNowColor = Colors.black;
  Color textColor2 = Colors.black;
  Color borderNowColor2 = Colors.black;

  bool ifActive = true;
  //bool ifActive2 = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      textColor = Colors.black;
      borderNowColor = Colors.black;
    });
  }

  void _incrementExit2(PointerEvent details) {
    setState(() {
      //normal
      textColor2 = Colors.black;
      borderNowColor2 = Colors.black;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      borderNowColor = Colors.blueAccent[700];
      textColor = Colors.blueAccent[700];
    });
  }

  void _updateLocation2(PointerEvent details) {
    setState(() {
      //hover
      textColor2 = Colors.red[700];
      borderNowColor2 = Colors.red[700];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 450),
      child: Stack(
        children: <Widget>[
          Visibility(
            visible: ifActive,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(flex: 80, child: SizedBox()),
                Expanded(flex: 0, child: SizedBox()),
                Expanded(
                  flex: 450,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 120),
                    padding: EdgeInsets.all(20),
                    height: 220,
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
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Draw',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            Material(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  border: new Border.all(
                                    color: Colors.grey[300],
                                    width: 1,
                                  ),
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(2),
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
                            ),
                            SizedBox(width: 18),
                            Text(
                              'People from member list',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10),
                            Material(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  border: new Border.all(
                                    color: Colors.grey[300],
                                    width: 1,
                                  ),
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(2),
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
                            ),
                            SizedBox(width: 18),
                            Text(
                              'groups from all groups',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MouseRegion(
                                onEnter: _incrementEnter,
                                onHover: _updateLocation,
                                onExit: _incrementExit,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      ifActive = false;
                                    });
                                  }, //_setTextOpacity,
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: borderNowColor, width: 1.5),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 25),
                                    child: Text(
                                      'Start',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textColor,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MouseRegion(
                                onEnter: _incrementEnter,
                                onHover: _updateLocation2,
                                onExit: _incrementExit2,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop('dialog');
                                  }, //_setTextOpacity,
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: borderNowColor2, width: 1.5),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textColor2,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 975, child: SizedBox()),
                Expanded(flex: 370, child: SizedBox()),
              ],
            ),
          ),
          Visibility(
            visible: !ifActive,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(flex: 80, child: SizedBox()),
                Expanded(flex: 0, child: SizedBox()),
                Expanded(
                  flex: 450,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 120),
                    padding: EdgeInsets.all(20),
                    height: 220,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Result',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.6,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 1,
                          width: 180,
                          color: Colors.grey[350],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'Keaton Barajas, Lukasz Michael,Harper Kearns, Hafsa Ventura, Ritik Webb, Tolga Crosby',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Segoe',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.6,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MouseRegion(
                                onEnter: _incrementEnter,
                                onHover: _updateLocation,
                                onExit: _incrementExit,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      ifActive = true;
                                    });
                                  }, //_setTextOpacity,
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: borderNowColor, width: 1.5),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text(
                                      'Redraw',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textColor,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: MouseRegion(
                                onEnter: _incrementEnter,
                                onHover: _updateLocation2,
                                onExit: _incrementExit2,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop('dialog');
                                  }, //_setTextOpacity,
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: borderNowColor2, width: 1.5),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 25),
                                    child: Text(
                                      'Leave',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textColor2,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.6,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 975, child: SizedBox()),
                Expanded(flex: 370, child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
