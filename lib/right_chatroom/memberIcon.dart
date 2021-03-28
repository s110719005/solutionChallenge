import 'package:flutter/material.dart';

class memberIcon extends StatefulWidget {
  memberIcon({Key key, this.iconPath}) : super(key: key);
  //final IconData icon;
  final String iconPath;

  @override
  _memberIconState createState() => _memberIconState();
}

class _memberIconState extends State<memberIcon> {
  bool _pinIsPressed = false;

  Color _allBlue = Colors.blue[700];
  Color _pinBorderColor = Colors.transparent;
  Color _pinColor = Colors.grey[600];
  Color _inkColor = Colors.transparent;
  Color _hoverColor = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: _pinBorderColor, width: 1.5),
          color: _inkColor,
          shape: BoxShape.circle,
        ),
        child: InkWell(
            //splashColor: Colors.amber,
            borderRadius: BorderRadius.circular(1000),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: Image.asset(
                  widget.iconPath,
                  color: _pinColor,
                  width: 40,
                  height: 40,
                ),
                iconSize: 20,
                hoverColor: Colors.transparent,
                splashRadius: 15,
                onPressed: () {
                  setState(() {
                    _pinIsPressed = !_pinIsPressed;
                    if (_pinIsPressed) {
                      _pinBorderColor = _allBlue;
                      _pinColor = _allBlue;
                      _inkColor = Colors.white;
                      _hoverColor = Colors.white;
                    } else {
                      _pinBorderColor = Colors.transparent;
                      _pinColor = Colors.grey[600];
                      _inkColor = Colors.transparent;
                      _hoverColor = Colors.grey[300];
                    }
                  });
                },
              ),
            )),
      ),
    );
  }
}
