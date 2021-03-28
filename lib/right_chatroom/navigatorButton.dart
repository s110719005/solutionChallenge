import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/Announcement.dart';
import 'Member.dart';
import 'NavigationService.dart';

class navigatorButton extends StatefulWidget {
  navigatorButton(
    this.selectItem, {
    Key key,
    //this.flexval,
    this.index,
    this.isSelected,
    this.iconColor,
    this.iconPath,
    this.iconText,
    this.page,
  }) : super(key: key);

  //final int flexval;
  final String iconText;
  final int index;
  final bool isSelected;
  final Color iconColor;
  final String iconPath;
  final String page;
  Function(int) selectItem;

  @override
  _navigatorButtonState createState() => _navigatorButtonState();
}

class _navigatorButtonState extends State<navigatorButton> {
  //int _f = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        //flex: widget.flexval,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FlatButton(
                color: Colors.white,
                splashColor: Colors.transparent,
                shape: RoundedRectangleBorder(side: BorderSide.none),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        widget.iconPath,
                        width: 20,
                        height: 20,
                        color: widget.iconColor,
                      ),
                    ),
                    // Text(widget.iconText,
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     color: Colors.blue[700],
                    //     letterSpacing: 1.28,
                    //   ),
                    // ),
                  ],
                ),
                onPressed: () {
                  widget.selectItem(widget.index);
                  NavigationService.instance.navigateTo(widget.page);

                  // Navigator.pushReplacement(
                  //     context,
                  //     PageRouteBuilder(
                  //         pageBuilder: (context, animation1, animation2)=> Member(),
                  //     ));
                  //Navigator.pushNamed(context, widget.page);
                  //Navigator.pushNamed(context,'/W2');
                  //Navigator.pushNamed(context, '/W3');
                },
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              thickness: 0,
              indent: 21,
              endIndent: 21,
              width: 0,
            ),
          ],
        ));
  }
}
