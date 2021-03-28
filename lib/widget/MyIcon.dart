import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {
  final String iconUrl;
  final String iconHoverUrl;
  final double iconSize;
  final Color iconColor;
  final Color iconHoverColor;
  final double borderWidth;
  final Color borderActiveColor;
  final Color borderHoverColor;
  final Color splashColor;
  final VoidCallback iconFunction;
  MyIcon(
      {this.iconHoverUrl,
      this.iconSize,
      this.iconUrl,
      this.borderWidth,
      this.borderActiveColor,
      this.borderHoverColor,
      this.splashColor,
      this.iconFunction,
      this.iconColor,
      this.iconHoverColor
      // this.iconFunction,
      });
  @override
  _MyIconState createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  Color textColor = Colors.black;
  Color borderNowColor = Colors.transparent;
  Color iconNowColor;

  void initState() {
    iconNowColor = widget.iconColor;
  }

  bool ifActive = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {});
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      //normal
      if (ifActive) {
        borderNowColor = widget.borderActiveColor;
      } else if (!ifActive) {
        borderNowColor = Colors.transparent;
        iconNowColor = widget.iconColor;
      }
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      //hover
      borderNowColor = widget.borderHoverColor;
      iconNowColor = widget.iconHoverColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.iconSize + 1,
      width: widget.iconSize + 1,
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(widget.iconSize + 1)),
        border: Border.all(width: widget.borderWidth, color: borderNowColor),
      ),
      child: MouseRegion(
        onEnter: _incrementEnter,
        onHover: _updateLocation,
        onExit: _incrementExit,
        child: RawMaterialButton(
          constraints: BoxConstraints(
            maxWidth: widget.iconSize,
            minWidth: widget.iconSize,
            maxHeight: widget.iconSize,
            minHeight: widget.iconSize,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.iconSize),
          ),
          hoverColor: widget.splashColor,
          onPressed: () {
            if (ifActive) {
              setState(() {
                ifActive = false;
                borderNowColor = widget.borderActiveColor;
              });
            } else if (!ifActive) {
              widget.iconFunction();
              setState(() {
                ifActive = true;
                borderNowColor = Colors.transparent;
                iconNowColor = widget.iconColor;
              });
            }
          },
          child: Stack(children: <Widget>[
            Visibility(
              visible: !ifActive,
              child: Image.asset(
                widget.iconUrl,
                width: widget.iconSize,
                color: iconNowColor,
              ),
            ),
            Visibility(
              visible: ifActive,
              child: Image.asset(
                widget.iconHoverUrl,
                width: widget.iconSize,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
