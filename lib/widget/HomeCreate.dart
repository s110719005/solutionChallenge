import 'package:flutter/material.dart';

class HomeCreate extends StatefulWidget {
  @override
  _HomeCreateState createState() => _HomeCreateState();
}

class _HomeCreateState extends State<HomeCreate> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 880, 15),
              child: Text(
                'Create a new class',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Segoe',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Classes(
                  className: 'White Board',
                  classbgColor: Colors.white,
                  navNumber: 1,
                  classImage: 'icon/HomeClassSelect/whiteboard.png',
                ),
                Classes(
                  className: 'Video Meeting',
                  classbgColor: Colors.lightBlue[600],
                  navNumber: 2,
                  classImage: 'icon/HomeClassSelect/video.png',
                ),
                Classes(
                  className: 'Presentation',
                  classbgColor: Colors.amber,
                  navNumber: 3,
                  classImage: 'icon/HomeClassSelect/presentation.png',
                ),
                Classes(
                  className: 'Seminar',
                  classbgColor: Colors.green,
                  navNumber: 4,
                  classImage: 'icon/HomeClassSelect/seminar.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Classes extends StatefulWidget {
  final String className;
  final String classImage;
  final Color classbgColor;
  final int navNumber;
  Classes({this.className, this.classbgColor, this.navNumber, this.classImage});

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: RawMaterialButton(
            onPressed: () {
              if (widget.navNumber == 3) {
                _showPresentationScreen('/presentation');
              } else if (widget.navNumber == 4) {
                _showPresentationScreen('/seminar');
              } else if (widget.navNumber == 2) {
                _showPresentationScreen('/video');
              } else if (widget.navNumber == 1) {
                _showPresentationScreen('/board');
              }
            },
            fillColor: widget.classbgColor,
            constraints: BoxConstraints(minWidth: 250, minHeight: 140),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Image.asset(
              '${widget.classImage}',
              height: 35,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            '${widget.className}',
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
    );
  }

  void _showPresentationScreen(String navRoute) {
    Navigator.of(context).pushNamed('$navRoute');
  }
}
