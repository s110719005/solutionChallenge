import 'package:flutter/material.dart';

class StartSeminar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 10),
              child: Text(
                'You are meeting with all groups',
                style: TextStyle(
                  color: Colors.red[700],
                  fontFamily: 'Segoe',
                  fontSize: 20,
                  letterSpacing: 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Text(
                  'Seminar Mode',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.6,
                  ),
                ),
              ),
            ],
          ),
          Material(
            color: Colors.grey[50],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              width: 480,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  'img/videoCam/11.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]);
  }
}

class StartSeminar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 10),
              child: Text(
                'You are in group 1',
                style: TextStyle(
                  color: Colors.red[700],
                  fontFamily: 'Segoe',
                  fontSize: 20,
                  letterSpacing: 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Text(
                  'Seminar Mode',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.6,
                  ),
                ),
              ),
            ],
          ),
          Material(
            color: Colors.grey[50],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              width: 480,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  'img/videoCam/11.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]);
  }
}

class StartSeminar3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 10),
              child: Text(
                'You are meeting with group 1',
                style: TextStyle(
                  color: Colors.red[700],
                  fontFamily: 'Segoe',
                  fontSize: 20,
                  letterSpacing: 1.6,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Text(
                  'Seminar Mode',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.6,
                  ),
                ),
              ),
            ],
          ),
          Material(
            color: Colors.grey[50],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              width: 480,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  'img/videoCam/11.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]);
  }
}

class StartVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Text(
                  'Custom',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.6,
                  ),
                ),
              ),
            ],
          ),
          Material(
            color: Colors.grey[50],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              width: 480,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  'img/videoCam/11.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]);
  }
}
