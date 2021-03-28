import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
//import 'package:teachy_try/main.dart';

class SlideView extends StatefulWidget {
  @override
  _SlideViewState createState() => _SlideViewState();
}

class _SlideViewState extends State<SlideView> {
  // void goFullScreen() {
  //   document.documentElement.requestFullscreen();
  // }

  bool _visibleBottomTool = false;
  void _hoverBottomTool(PointerEvent details) {
    setState(() {
      _visibleBottomTool = true;
    });
  }

  void _exitBottomTool(PointerEvent details) {
    setState(() {
      _visibleBottomTool = false;
    });
  }

  bool _listVisible = false;

  //default換圖
  Image _changeIcon = new Image.asset('icon/presentation_section/strip.png');
  String _changeText = 'Filmstrip View';
  bool _isStripPressed = false;
  _iconStripDefault() {
    if (_isStripPressed) {
      _changeIcon = new Image.asset('icon/presentation_section/default.png');
      _changeText = 'Default';
    } else {
      _changeIcon = new Image.asset('icon/presentation_section/strip.png');
      _changeText = 'Filmstrip View';
    }
  }

  //left_tool TOP
  Widget bottomButton(String hoverText, String iconPath, String func) {
    //default換圖
    Image decideIconPath() {
      if (iconPath == 'icon/presentation_section/strip.png') {
        return _changeIcon;
      } else {
        return Image.asset(iconPath);
      }
    }

    //default換字
    String decidehoverText() {
      if (hoverText == 'Filmstrip View') {
        return _changeText;
      } else {
        return hoverText;
      }
    }

    return Tooltip(
      message: decidehoverText(),
      verticalOffset: 25,
      margin: EdgeInsets.only(left: 0),
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
        color: Colors.grey[500],
        fontFamily: 'Segoe',
        fontWeight: FontWeight.w400,
        letterSpacing: 1.4,
      ),
      child: Transform.scale(
          scale: 1.5,
          child: IconButton(
            icon: decideIconPath(),
            color: Colors.grey[600],
            hoverColor: Colors.grey[300],
            splashRadius: 12,
            onPressed: () {
              //傳決定哪個func
              if (func == 'FilmStrip') {
                setState(() {
                  _listVisible = !_listVisible;
                  _isStripPressed = !_isStripPressed;
                  _iconStripDefault();
                });
              } else if (func == 'next') {
                if (_listSelected != 4) {
                  setState(() {
                    _listBorder[_listSelected] = Colors.grey[900];
                    _listSelected = _listSelected + 1;
                    _listBorder[_listSelected] = Colors.blue[700];
                  });
                }
              } else if (func == 'previous') {
                if (_listSelected != 0) {
                  setState(() {
                    _listBorder[_listSelected] = Colors.grey[900];
                    _listSelected = _listSelected - 1;
                    _listBorder[_listSelected] = Colors.blue[700];
                  });
                }
              } else if (func == 'FullScreen') {
                print('fullScreen');
                NVF.navigateTo('/fullScreen');
                // Navigator.of(context).pushNamed('/board');

              }
            },
          )),
    ); //return
  }

  List<String> _imagePath = [
    'img/presentation_section/01.png',
    'img/presentation_section/02.png',
    'img/presentation_section/03.png',
    'img/presentation_section/04.png',
    'img/presentation_section/05.png',
  ];

  int _listSelected = 0; //selected index
  List<Color> _listBorder = [
    Colors.grey[600],
    Colors.grey[600],
    Colors.grey[600],
    Colors.grey[600],
    Colors.grey[600],
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                /////////////////////////////////////////////////////////側邊欄
                child: Expanded(
                    flex: 452,
                    child: Container(
                      color: Colors.grey[300],
                      child: ListView.builder(
                        padding: EdgeInsets.fromLTRB(26, 40, 0, 0),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          void _hoverListBorder(PointerEvent details) {
                            setState(() {
                              _listBorder[index] = Colors.blue[700];
                            });
                          }

                          void _exitListBorder(PointerEvent details) {
                            setState(() {
                              if (index == _listSelected)
                                _listBorder[index] = Colors.blue[700];
                              else {
                                _listBorder[index] = Colors.grey[600];
                              }
                            });
                          }

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.6,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 18),
                                  child: MouseRegion(
                                      onHover: _hoverListBorder,
                                      onExit: _exitListBorder,
                                      child: Material(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _listBorder[_listSelected] =
                                                  Colors.grey[600];
                                              _listSelected = index;
                                              _listBorder[_listSelected] =
                                                  Colors.blue[700];
                                            });
                                          },
                                          child: Container(
                                            //padding: EdgeInsets.fromLTRB(0, 0 , 0, 18),
                                            height: 133,
                                            width: 236,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    _imagePath[index]),
                                                fit: BoxFit.contain,
                                              ),
                                              border: Border.all(
                                                color: _listBorder[index],
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ))),
                            ],
                          );
                        },
                      ),
                    )),
                visible: _listVisible,
              ),
              Expanded(
                  ////////////////////////////////////////////////////////////大簡報區
                  flex: 938,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: _listVisible ? 25 : 0),
                    child: Container(
                      color: Colors.white,
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset(
                        _imagePath[_listSelected],
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
            ],
          ),
          Positioned.fill(
              ////////////////////////////////////////////////////////// Bottom
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MouseRegion(
                    onHover: _hoverBottomTool,
                    onExit: _exitBottomTool,
                    child: AnimatedOpacity(
                      opacity: _visibleBottomTool ? 1.0 : 0.0,
                      duration: Duration(microseconds: 3000),
                      child: AspectRatio(
                        aspectRatio: 1389 / 87,
                        child: SizedBox(
                          width: double.infinity,
                          child: Material(
                            color: Colors.grey[50],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45),
                                  child: bottomButton(
                                      'Zoom In',
                                      'icon/presentation_section/zoomIn.png',
                                      ''),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 45),
                                  child: bottomButton(
                                      'Zoom Out',
                                      'icon/presentation_section/zoomOut.png',
                                      ''),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 24),
                                  child: bottomButton(
                                      'Previous Page',
                                      'icon/presentation_section/previous.png',
                                      'previous'),
                                ),
                                Tooltip(
                                  message: 'Current Page',
                                  verticalOffset: 25,
                                  margin: EdgeInsets.only(left: 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[300],
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            1, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[500],
                                    fontFamily: 'Segoe',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.4,
                                  ),
                                  child: Text(
                                    '${_listSelected + 1}/5',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontFamily: 'Segoe',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.6,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: bottomButton(
                                      'Next Page',
                                      'icon/presentation_section/next.png',
                                      'next'),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: bottomButton(
                                      'Filmstrip View',
                                      'icon/presentation_section/strip.png',
                                      'FilmStrip'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: bottomButton(
                                      'Full Screen',
                                      'icon/presentation_section/fullScreen.png',
                                      'FullScreen'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
