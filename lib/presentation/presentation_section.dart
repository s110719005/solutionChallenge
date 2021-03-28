import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/NavigationService.dart';
//import 'NavigationService.dart';
import 'SlideView.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class presentation_section extends StatefulWidget {
  @override
  _presentation_sectionState createState() => _presentation_sectionState();
}

var NV = new NavigationService();

class _presentation_sectionState extends State<presentation_section> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 40),
      color: Colors.grey[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Presentation Section
          Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 0, 16),
              child: Text(
                'Presentation Section',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                ),
              )),
          Expanded(
              child: Center(
            child: AspectRatio(
              aspectRatio: 1390 / 782,
              child: Container(
                /////////////////////////////// PPT區域
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 5,
                      spreadRadius: 1,
                      //offset: Offset(5, 0),
                    ),
                  ],
                ),
                //color: Colors.white,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    //primaryColor: Color.fromRGBO(86, 86, 86, 1.00),
                    pageTransitionsTheme: PageTransitionsTheme(builders: {
                      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
                      TargetPlatform.android:
                          FadeUpwardsPageTransitionsBuilder(),
                    }),
                  ),
                  navigatorKey: NV.navigationKey,
                  initialRoute: "/prepare",
                  routes: {
                    '/prepare': (context) => prepareSlide(),
                    '/start': (context) => SlideView(),
                  },
                ), ///////////////////// PPT區域
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class prepareSlide extends StatefulWidget {
  @override
  _prepareSlideState createState() => _prepareSlideState();
}

class _prepareSlideState extends State<prepareSlide> {
  final TextEditingController myController = new TextEditingController();

  bool _visibleCheck = false;
  bool _visibleSlideName = false;
  bool _uploaded = false;
  Image _changeIcon =
      new Image.asset('icon/presentation_section/addSlides.png');
  Text _changeText = new Text(
    'Drag or upload a presentation file here\n(doc, pdf, ppt)\nor',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 14,
      color: Colors.black,
      fontFamily: 'Segoe',
      fontWeight: FontWeight.w600,
      letterSpacing: 1.6,
    ),
  );

  _iconReadySlide() {
    _visibleCheck = true;
    _visibleSlideName = true;
    _changeIcon = new Image.asset('icon/presentation_section/readySlides.png');
    _changeText = new Text(
      'Upload complete',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: 'Segoe',
        fontWeight: FontWeight.w600,
        letterSpacing: 1.6,
      ),
    );
  }

  waitUrlSubmit() {
    if (myController.text != '') {
      _uploaded = true;
      _visibleCheck = true;
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _iconReadySlide();
          _uploaded = false;
        });
      });
    }
    print(myController.text);
  }

  waitUpload() {
    _uploaded = true;
    _visibleCheck = true;
    Future.delayed(Duration(seconds: 2), () {
      // 5s over, navigate to a new page
      setState(() {
        _iconReadySlide();
        _uploaded = false;
      });
    });
  }

  DropzoneViewController controller2;
  String message2 = 'Drop something here';
  bool highlighted1 = false;

  Widget buildZone2(BuildContext context) => Builder(
        builder: (context) => DropzoneView(
          operation: DragOperation.move,
          onCreated: (ctrl) => controller2 = ctrl,
          onLoaded: () => print('Zone 2 loaded'),
          onError: (ev) => print('Upload error: $ev'),
          onDrop: (ev) {
            //print('Zone 2 drop: ${ev.name}');
            setState(() {
              //message2 = '${ev.name} dropped';
              waitUpload();
            });
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
          ),
          //////////////////////////////////////////////////////////////          drag 檔案區
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                buildZone2(context),
                //Center(child:Text(message2)),
                Material(
                  color: Colors.white,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: IconButton(
                      icon: _changeIcon,
                      iconSize: 108,
                      hoverColor: Colors.grey[300],
                      onPressed: () {
                        setState(() {
                          _visibleCheck = false;
                          _visibleSlideName = false;
                          _uploaded = false;
                          _changeIcon = new Image.asset(
                              'icon/presentation_section/addSlides.png');
                          _changeText = new Text(
                            'Drag or upload a presentation file here\n(doc, pdf, ppt)\nor',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'Segoe',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.6,
                            ),
                          );
                        });
                      }),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _visibleSlideName
                ? true
                : false, //////////////////////////////////// 檔案名稱
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'DSC.ppt',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.6,
                  ),
                )),
          ),
          Padding(
              /////////////////////////////////////////////////////////////          進度顯示
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Visibility(
                      child: _uploaded
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.grey[200],
                              valueColor: AlwaysStoppedAnimation(Colors.blue),
                            )
                          : Image.asset(
                              'icon/presentation_section/greenCheck.png',
                              width: 25,
                              height: 25,
                            ),
                      visible: _visibleCheck,
                    ),
                  ),
                  _changeText,
                ],
              )),
          SizedBox(
            ///////////////////////////////////////////////////              Url
            width: 534,
            height: 39,
            child: TextField(
              controller: myController,
              cursorColor: Colors.grey,
              onSubmitted: (value) {
                setState(() {
                  waitUrlSubmit();
                });
              },
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'Segoe',
                fontWeight: FontWeight.w600,
                letterSpacing: 1.6,
              ),
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(30, 5, 0, 10),
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                //border: InputBorder.none,//去除下底線
                hintText: 'Type a Google Docs/ Slides URL',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.6,
                ),
              ),
            ),
          ),
          Spacer(),
          /////////////////////////////////////  Start Class    ////////////////////////////
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.all(30),
              color: Colors.blue[700],
              onPressed: () {
                NV.navigateToReplacement('/start');
              },
              child: Text(
                'Start Presentation',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                ),
              ),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.blue[700],
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ],
      ),
    );
  }
}
