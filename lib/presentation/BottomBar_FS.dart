import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widget/BottomTools.dart';
//import 'BottomTools.dart';
//import 'NavigationService.dart';
import 'presentation_section.dart';
//import 'main.dart';

class bottom_bar extends StatefulWidget {
  @override
  _bottom_barState createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int _currentPage = 1;

  /////////////////////////////////////////////////////////////////////////////////// SlideView 換圖

  //left_tool TOP
  Widget bottomButton(String hoverText, String iconPath, String func) {
    return Tooltip(
      message: hoverText,
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
        fontWeight: FontWeight.w600,
        letterSpacing: 1.4,
      ),
      child: Transform.scale(
          scale: 2,
          child: IconButton(
            icon: Image.asset(
              iconPath,
              width: 50,
              height: 50,
            ),
            color: Colors.grey[600],
            hoverColor: Colors.grey[300],
            splashRadius: 12,
            onPressed: () {
              setState(() {
                //NVF.navigateToReplacement('/presentation'); //main.dart
                //NV.navigateToReplacement('/start');  //presentation_section
                NVF.goback();
              });
            },
          )),
    ); //returnurn
  }
  ////////////////////////////////////////////////////////////////////////////////// Slide View 換圖

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 264,
            child: Material(
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => ClassDetail(),
                        barrierColor: Colors.transparent);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Class Details',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.expand_less,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 778,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon/presentation_section/mic.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'icon/presentation_section/call.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'icon/presentation_section/camera.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'icon/presentation_section/screenshare.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'icon/presentation_section/record.png',
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'icon/presentation_section/muteother.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              )),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
              flex: 877,
              child: Material(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon/presentation_section/zoomIn.png',
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      'icon/presentation_section/zoomOut.png',
                      width: 50,
                      height: 50,
                    ),
                    Image.asset(
                      'icon/presentation_section/previous.png',
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      '${_currentPage}/5',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.4,
                      ),
                    ),
                    Image.asset(
                      'icon/presentation_section/next.png',
                      width: 50,
                      height: 50,
                    ),
                    bottomButton('Default',
                        'icon/presentation_section/default.png', 'Default'),
                    Image.asset(
                      'icon/presentation_section/strip.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
