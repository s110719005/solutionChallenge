import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

typedef void BoolCallback(bool id);

class MenuIcon extends StatefulWidget {
  MenuIcon(
      {Key key,
      @required this.onAddToolChanged,
      this.hoverText,
      this.animateicon,
      this.rotatedir,
      this.newIsPress})
      : super(key: key);
  final IconData animateicon;
  final String hoverText;
  final double rotatedir;
  final bool newIsPress;
  final BoolCallback onAddToolChanged;

  @override
  _MenuIconState createState() => _MenuIconState();
}

class _MenuIconState extends State<MenuIcon> with TickerProviderStateMixin {
  //show main memu

  showMenus(BuildContext context) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(66, 380, 1010, 80),
      items: [
        PopupMenuItem(
          height: 53,
          child: Container(
            width: 256,
            child: SubMenu(title: 'Slides'),
          ),
        ),
        PopupMenuItem(
          height: 53,
          child: Container(
            width: 256,
            child: SubMenu(title: 'Seminar'),
          ),
        ),
        PopupMenuItem(
          height: 53,
          child: Container(
            width: 256,
            child: SubMenu(title: 'Tools'),
          ),
        ),
        PopupMenuItem(
          height: 53,
          child: Container(
            width: 256,
            child: SubMenu(title: 'Rooms'),
          ),
        ),
      ],
    );
  }

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
    //controller.forward();
  }

  Color _iconColorBot = Colors.grey[600];
  Color _iconBorderColorBot = Colors.white;

  @override
  Widget build(BuildContext context) {
    //_update();
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
        child: InkWell(
          borderRadius: BorderRadius.circular(1000),
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.all(0),
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
                child: IconButton(
                  icon: Icon(widget.animateicon),
                  color: _iconColorBot,
                  hoverColor: Colors.grey[300],
                  splashRadius: 20,
                  iconSize: 24,
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                      widget.onAddToolChanged(isPressed);
                      if (isPressed) {
                        controller.forward();
                        _iconColorBot = Colors.blue[700];
                        _iconBorderColorBot = Colors.blue[700];
                        //showMenus(context); //show main menu
                      } else {
                        controller.reverse();
                        _iconColorBot = Colors.grey[600];
                        _iconBorderColorBot = Colors.white;
                      }
                    });
                  },
                ),
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

enum WhyFarther { slides, seminar, tools, rooms }

class SubMenu extends StatefulWidget {
  SubMenu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SubMenuState createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  WhyFarther _selection = WhyFarther.slides;

  @override
  Widget build(BuildContext context) {
    if (widget.title == 'Slides') {
      return PopupMenuButton<WhyFarther>(
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            //letterSpacing: 1.28,
            color: Colors.grey[600],
          ),
        ),
        onCanceled: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        onSelected: (WhyFarther result) {
          setState(() {
            _selection = result;
          });
        },
        // how much the submenu should offset from parent. This seems to have an upper limit.
        offset: Offset(265, 0),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          PopupMenuItem<WhyFarther>(
              value: WhyFarther.slides,
              child: Container(
                width: 20,
                height: 20,
                color: Colors.amber,
                //child: Image(),
              )),
        ],
      );
    }
    ///////////////////////////////////////////////////////////////////////
    else if (widget.title == 'Seminar') {
      return PopupMenuButton<WhyFarther>(
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
        onCanceled: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        onSelected: (WhyFarther result) {
          setState(() {
            _selection = result;
          });
        },
        // how much the submenu should offset from parent. This seems to have an upper limit.
        offset: Offset(265, 0),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          PopupMenuItem<WhyFarther>(
              //value: WhyFarther.slides,
              child: Container(
            width: 256,
            child: Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                  child: Image.asset('plus.png')),
              Text(
                'Random',
                style: TextStyle(
                  fontSize: 16,
                  //letterSpacing: 1.28,
                  color: Colors.grey[600],
                ),
              ),
            ]),
          )),
          PopupMenuItem<WhyFarther>(
              //value: WhyFarther.slides,
              child: Container(
            width: 256,
            child: Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                  child: Image.asset('plus.png')),
              Text(
                'Assign',
                style: TextStyle(
                  fontSize: 16,
                  //letterSpacing: 1.28,
                  color: Colors.grey[600],
                ),
              ),
            ]),
          )),
          PopupMenuItem<WhyFarther>(
              //value: WhyFarther.seminar,
              child: Container(
            width: 256,
            child: Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                  child: Image.asset('plus.png')),
              Text(
                'Open Rooms',
                style: TextStyle(
                  fontSize: 16,
                  //letterSpacing: 1.28,
                  color: Colors.grey[600],
                ),
              ),
            ]),
          )),
        ],
      );
    }
    ///////////////////////////////////////////////////////////////////////////////
    else if (widget.title == 'Tools') {
      return PopupMenuButton<WhyFarther>(
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            //letterSpacing: 1.28,
            color: Colors.grey[600],
          ),
        ),
        onCanceled: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        onSelected: (WhyFarther result) {
          setState(() {
            _selection = result;
          });
        },
        // how much the submenu should offset from parent. This seems to have an upper limit.
        offset: Offset(265, 0),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          PopupMenuItem<WhyFarther>(
              //value: WhyFarther.slides,
              child: Container(
            width: 20,
            height: 20,
            color: Colors.green,
            //child: Image(),
          )),
        ],
      );
    }
    ////////////////////////////////////////////////////////////////////////////////////
    else if (widget.title == 'Rooms') {
      return PopupMenuButton<WhyFarther>(
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            //letterSpacing: 1.28,
            color: Colors.grey[600],
          ),
        ),
        onCanceled: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        onSelected: (WhyFarther result) {
          setState(() {
            _selection = result;
          });
        },
        // how much the submenu should offset from parent. This seems to have an upper limit.
        offset: Offset(265, 0),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          PopupMenuItem<WhyFarther>(
              //value: WhyFarther.slides,
              child: Container(
            width: 20,
            height: 20,
            color: Colors.blue,
            //child: Image(),
          )),
        ],
      );
    }
  }
}
