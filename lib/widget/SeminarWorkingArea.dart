import 'package:flutter/material.dart';

import 'package:flutter_application_1/widget/DividerRandom.dart';
import 'package:flutter_application_1/widget/DividerAssign.dart';
import 'package:flutter_application_1/widget/DividerOpenRoom.dart';
import 'package:flutter_application_1/widget/DividerSame.dart';
import 'package:flutter_application_1/widget/SeminarVideoCam.dart';
import 'package:flutter_application_1/widget/StartSeminar.dart';

class SeminarWorkingArea extends StatefulWidget {
  @override
  _SeminarWorkingAreaState createState() => _SeminarWorkingAreaState();
}

class _SeminarWorkingAreaState extends State<SeminarWorkingArea> {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          //Left
          flex: 1,
          child: Material(
            color: Colors.white,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                //primaryColor: Color.fromRGBO(86, 86, 86, 1.00),
                pageTransitionsTheme: PageTransitionsTheme(builders: {
                  TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
                  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
                }),
              ),
              initialRoute: '/W1',
              routes: {
                '/W1': (context) => SeminarPage1(),
                '/W2': (context) => SeminarPage2(),
                '/W3': (context) => SeminarPage3(),
                '/W4': (context) => SeminarPage4(),
                '/W5': (context) => SeminarPage5(),
                '/W6': (context) => SeminarPage6(),
                '/W7': (context) => SeminarPage7(), //into group
                '/W8': (context) => SeminarPage8(), //let group video open
              },
            ),
          ),
        ),
      ],
    );
  }
}

class DividerHome extends StatefulWidget {
  @override
  _DividerHomeState createState() => _DividerHomeState();
}

class _DividerHomeState extends State<DividerHome> {
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
          ClassDivider(
            dividerName: 'Random',
            dividerIcon: 'assets/icon/SeminarDivider/random.png',
            navNumber: 1,
            hoverColor: Colors.black,
            hoverActiveColor: Colors.blueAccent[700],
          ),
          ClassDivider(
            dividerName: 'Assign',
            dividerIcon: 'assets/icon/SeminarDivider/assign.png',
            navNumber: 2,
            hoverColor: Colors.black,
            hoverActiveColor: Colors.blueAccent[700],
          ),
          ClassDivider(
            dividerName: 'Open rooms',
            dividerIcon: 'assets/icon/SeminarDivider/opendoor.png',
            navNumber: 3,
            hoverColor: Colors.black,
            hoverActiveColor: Colors.blueAccent[700],
          ),
          ClassDivider(
            dividerName: 'Same as last time',
            dividerIcon: 'assets/icon/SeminarDivider/opendoor.png',
            navNumber: 4,
            hoverColor: Colors.transparent,
            hoverActiveColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}

class ClassDivider extends StatefulWidget {
  final String dividerName;
  final String dividerIcon;
  final int navNumber;
  final Color hoverColor;
  final Color hoverActiveColor;
  ClassDivider(
      {this.dividerName,
      this.dividerIcon,
      this.navNumber,
      this.hoverColor,
      this.hoverActiveColor});
  @override
  _ClassDividerState createState() => _ClassDividerState();
}

class _ClassDividerState extends State<ClassDivider> {
  Color hoverColor;

  Color hoverBorderColor = Colors.transparent;
  Color hovertextColor = Colors.black;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      hoverColor = widget.hoverColor;
      hoverBorderColor = Colors.transparent;
      hovertextColor = Colors.black;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      hoverColor = widget.hoverActiveColor;
      hoverBorderColor = Colors.blueAccent[700];
      hovertextColor = Colors.blueAccent[700];
    });
  }

  @override
  void initState() {
    hoverColor = widget.hoverColor;
  }

// onEnter: _incrementEnter,
// onHover: _updateLocation,
// onExit: _incrementExit,
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: MouseRegion(
        onEnter: _incrementEnter,
        onHover: _updateLocation,
        onExit: _incrementExit,
        child: RawMaterialButton(
          onPressed: () {
            //Navigator.pushNamed(context, '/W2');
            if (widget.navNumber == 1) {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        SeminarPage2(),
                    transitionDuration: Duration(seconds: 0),
                  ));
            } else if (widget.navNumber == 2) {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        SeminarPage3(),
                    transitionDuration: Duration(seconds: 0),
                  ));
            } else if (widget.navNumber == 3) {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        SeminarPage4(),
                    transitionDuration: Duration(seconds: 0),
                  ));
            } else if (widget.navNumber == 4) {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        SeminarPage5(),
                    transitionDuration: Duration(seconds: 0),
                  ));
            }
          },
          fillColor: Colors.white,
          constraints: BoxConstraints(
              maxWidth: 320, maxHeight: 100, minHeight: 100, minWidth: 320),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 98,
            decoration: BoxDecoration(
              border: new Border.all(
                color: hoverBorderColor,
                width: 2,
              ),
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(9), bottom: Radius.circular(9)),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('${widget.dividerIcon}', color: hoverColor),
                  Text(
                    '${widget.dividerName}',
                    style: TextStyle(
                      fontSize: 18,
                      color: hovertextColor,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.6,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 40,
                    color: hovertextColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SeminarPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: DividerHome(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam1(),
        ),
      ],
    );
  }
}

class SeminarPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: DividerRandom(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam1(),
        ),
      ],
    );
  }
}

class SeminarPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: DividerAssign(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam1(),
        ),
      ],
    );
  }
}

class SeminarPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: DividerOpenRoom(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam1(),
        ),
      ],
    );
  }
}

class SeminarPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: DividerSame(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam1(),
        ),
      ],
    );
  }
}

class SeminarPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: StartSeminar(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam2(),
        ),
      ],
    );
  }
}

class SeminarPage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: StartSeminar2(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam3(),
        ),
      ],
    );
  }
}

class SeminarPage8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            //Left
            flex: 1,
            child: Material(
              color: Colors.grey[50],
              child: StartSeminar3(),
            )),
        Expanded(
          //Right
          flex: 1,
          child: SeminarVideoCam4(),
        ),
      ],
    );
  }
}
