import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/NavigationService.dart';
//import 'NavigationService.dart';

class Notifications_fix extends StatefulWidget {
  @override
  _Notifications_fixState createState() => _Notifications_fixState();
}

class _Notifications_fixState extends State<Notifications_fix> {
  Color normalColor = Colors.white;
  Color activeColor = Colors.red[700];
  Color bgColor = Colors.white;
  Color textColor = Colors.grey[600];
  bool ifNotify = false;
  int notifyCount = 3;

  void _setBackGroundColor() {
    setState(() {
      if (ifNotify) {
        //if bg is red
        bgColor = normalColor;
        textColor = Colors.grey[600];
        ifNotify = false;
        showDialog(
            context: context,
            builder: (_) => NotifyDetail(),
            barrierColor: Colors.transparent);
      } else if (!ifNotify) {
        bgColor = activeColor;
        textColor = Colors.white;
        ifNotify = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Visibility(
          visible: false,
          child: Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[200],
                      width: 2,
                    ),
                    right: BorderSide(
                      color: Colors.grey[200],
                      width: 2,
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You are meeting with all groups',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontFamily: 'Segoe',
                      fontSize: 20,
                      letterSpacing: 1.6,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: RawMaterialButton(
            onPressed: () {
              _setBackGroundColor();
            },
            //
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: bgColor,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[200],
                      width: 2,
                    ),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Segoe',
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(width: 20),
                  Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: textColor, width: 1.0),
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '$notifyCount',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'Segoe',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NotifyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 78,
          child: SizedBox(),
        ),
        Expanded(
          flex: 1474,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 80,
                child: SizedBox(),
              ),
              Expanded(
                flex: 1000,
                child: Column(
                  children: [
                    NotifyCard(),
                    NotifyCard(),
                    NotifyCard(),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 368,
          child: SizedBox(),
        ),
      ],
    );
  }
}

class NotifyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     //color: Colors.white,
      //     borderRadius: BorderRadius.circular((5.0)),
      //     boxShadow: [
      //       BoxShadow(
      //           color: Colors.grey[400],
      //           offset: Offset(5, 0),
      //           blurRadius: 3,
      //           spreadRadius: 0.1),
      //     ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              width: 1,
              color: Colors.grey[200],
            ),
            right: BorderSide(
              width: 1,
              color: Colors.grey[200],
            ),
          ),
        ),
        height: 80,
        child: RawMaterialButton(
          onPressed: () {
            NavigationService.instance.navigateToReplacement('/W3');
          },
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Question ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      'Shyla Hassan 02:40PM ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Mistress in on so laughing throwing endeavor occasion welcomed. Gravity sir brandon calling can',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
