import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/boxRotateAnimation.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Flexible(
                  flex: 1,
                  child: BoxRotationAnimation(
                    iconPath: 'icon/left_tool/setting.png',
                    rotatedir: -0.25,
                    hoverText: 'Setting',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset('img/TeachyLogo.png')),
            ),
            Expanded(
              flex: 10,
              child: SizedBox(width: 20.0),
            ),
            Expanded(
              flex: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50.0,
                child: Row(children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.search,
                    size: 24.0,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.transparent,
                      cursorWidth: 0.2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'Segoe',
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            //SEARCH BAR

            Expanded(
              flex: 10,
              child: SizedBox(width: 20.0),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/thumbnail/01.jpg'),
                  radius: 25,
                ),
              ),
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
