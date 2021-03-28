import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/left_tool.dart';
//import 'package:teachy_try/BottomBar_FS.dart';
//import 'left_tool.dart';
import 'TopBar.dart';
import 'BottomBar_FS.dart';

class FullScreen extends StatefulWidget {
  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> with TickerProviderStateMixin {
  List<String> pagePath = [
    '0',
    'img/presentation_section/01.png',
    'img/presentation_section/02.png',
    'img/presentation_section/03.png',
    'img/presentation_section/04.png',
    'img/presentation_section/05.png',
  ];
  int _currentPage = 1;

  AnimationController controller_left, controller_bottom, controller_top;
  Animation<Offset> animation_left, animation_bottom, animation_top;
  @override
  void initState() {
    super.initState();
    controller_left = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    controller_top = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    controller_bottom = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    animation_left =
        Tween(begin: Offset(-1, 0), end: Offset(0, 0)).animate(controller_left);
    animation_top =
        Tween(begin: Offset(0, -1), end: Offset(0, 0)).animate(controller_top);
    animation_bottom = Tween(begin: Offset(0, 1), end: Offset(0, 0))
        .animate(controller_bottom);

    controller_left.addStatusListener((status) {});
    controller_top.addStatusListener((status) {});
    controller_bottom.addStatusListener((status) {});
  }

  void _hoverleft(PointerEvent details) {
    controller_left.forward();
  }

  void _exitleft(PointerEvent details) {
    controller_left.reverse();
  }

  void _hovertop(PointerEvent details) {
    controller_top.forward();
  }

  void _exittop(PointerEvent details) {
    controller_top.reverse();
  }

  void _hoverbottom(PointerEvent details) {
    controller_bottom.forward();
  }

  void _exitbottom(PointerEvent details) {
    controller_bottom.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            pagePath[_currentPage],
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          child: MouseRegion(
            onExit: _exitleft,
            onHover: _hoverleft,
            child: SlideTransition(
              position: animation_left,
              child: Container(
                  width: 80, height: double.infinity, child: Left_tool()),
            ),
          ),
        ),
        Positioned(
          child: MouseRegion(
            onExit: _exittop,
            onHover: _hovertop,
            child: SlideTransition(
              position: animation_top,
              child: top_bar(),
            ),
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: MouseRegion(
            onExit: _exitbottom,
            onHover: _hoverbottom,
            child: SlideTransition(
              position: animation_bottom,
              child: bottom_bar(),
            ),
          ),
        )),
      ],
    );
  }
}
