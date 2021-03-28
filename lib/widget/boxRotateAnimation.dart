import 'package:flutter/material.dart';

class BoxRotationAnimation extends StatefulWidget {
  BoxRotationAnimation({Key key, this.hoverText, this.iconPath, this.rotatedir})
      : super(key: key);
  final String iconPath;
  final String hoverText;
  final double rotatedir;

  @override
  _BoxRotationAnimationState createState() => _BoxRotationAnimationState();
}

class _BoxRotationAnimationState extends State<BoxRotationAnimation>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  bool isPressed = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween(begin: 0.0, end: widget.rotatedir).animate(controller);
    controller.addStatusListener((status) {});
  }

  Color _iconColorBot = Colors.grey[600];
  Color _iconBorderColorBot = Colors.white;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      alignment: Alignment.center,
      turns: animation,
      child: Ink(
          padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
          decoration: BoxDecoration(
            border: Border.all(color: _iconBorderColorBot, width: 1.5),
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Tooltip(
              message: widget.hoverText,
              verticalOffset: -12,
              margin: EdgeInsets.only(left: 50),
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
                fontFamily: 'Segoe',
                //letterSpacing: 1.28,
                color: Colors.grey,
              ),
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                  icon: Image.asset(
                    widget.iconPath,
                    color: _iconColorBot,
                  ),
                  hoverColor: Colors.grey[300],
                  splashRadius: 13,
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                      if (isPressed) {
                        controller.forward();
                        _iconColorBot = Colors.blue[700];
                        _iconBorderColorBot = Colors.blue[700];
                      } else {
                        controller.reverse();
                        _iconColorBot = Colors.grey[600];
                        _iconBorderColorBot = Colors.white;
                      }
                    });
                  },
                ),
              ))),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
