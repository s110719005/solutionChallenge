import 'package:flutter/material.dart';

class pinVideo extends StatefulWidget {
  pinVideo({Key key, this.isTeacher, this.picUrl}) : super(key: key);
  final bool isTeacher;
  final String picUrl;
  @override
  _pinVideoState createState() => _pinVideoState();
}

class _pinVideoState extends State<pinVideo> {
  Color _hoverGrey = Colors.grey[300];
  Color _allBlue = Colors.blue[700];

  bool _pinIsPressed = false;
  Color _pinBorderColor = Colors.transparent;
  Color _pinColor = Colors.grey[600];

  Color _videoBorder = Colors.transparent;
  Color _inkColor = Colors.transparent;

  bool defaultT = true;

  // Image _changeIcon  = new Image.asset('icon/right_chatroom/mute.png',color: Colors.grey[600],);

  @override
  Widget build(BuildContext context) {
    if (defaultT) {
      //只有一開始
      defaultT = false;
      if (widget.isTeacher) {
        _pinIsPressed = true;
      }
    }

    // _iconPin(){
    //   _changeIcon = new Image.asset('icon/right_chatroom/mute.png',color: Colors.grey[600],);
    //   _hoverMuteText = 'Mute Others';
    //
    // }
    // _iconPinfill(){
    //   _changeIcon = new Image.asset('icon/right_chatroom/unmute.png',color: _allRed,);
    //   _hoverMuteText = 'Unmute Others';
    //
    // }

    void _showhoverBorder(PointerEvent details) {
      setState(() {
        _videoBorder = _allBlue;
        _inkColor = Colors.white;
        if (_pinIsPressed) {
          _pinBorderColor = _allBlue;
          _pinColor = _allBlue;
        } else {
          _pinBorderColor = Colors.transparent;
          _pinColor = Colors.grey[600];
        }
      });
    }

    void _noShowBorder(PointerEvent details) {
      setState(() {
        _inkColor = Colors.transparent;
        _videoBorder = Colors.transparent;
        _pinBorderColor = Colors.transparent;
        _pinColor = Colors.grey[600];
      });
    }

    return MouseRegion(
      onHover: _showhoverBorder,
      onExit: _noShowBorder,
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${widget.picUrl}'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color:
                      _videoBorder, ///////////////////////////////////////////
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Positioned(
                right: 15,
                top: 10,
                child: Material(
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
                              'icon/right_chatroom/pin.png',
                              color: _pinColor,
                            ),
                            iconSize: 20,
                            hoverColor: _hoverGrey,
                            splashRadius: 20,
                            onPressed: () {
                              setState(() {
                                _pinIsPressed = !_pinIsPressed;
                                if (_pinIsPressed) {
                                  _pinBorderColor = _allBlue;
                                  _pinColor = _allBlue;
                                } else {
                                  _pinBorderColor = Colors.transparent;
                                  _pinColor = Colors.grey[600];
                                }
                              });
                            },
                          ),
                        )),
                  ),
                )),
          ],
        ),
      ),
    );
    //_pinIsPressed = widget.isTeacher;
    // return Ink(
    //     decoration: BoxDecoration(
    //       border: Border.all(color: _pinBorderColor, width: 1.5),
    //       color: Colors.white,
    //       shape: BoxShape.circle,
    //     ),
    //     child: InkWell(
    //         borderRadius: BorderRadius.circular(1000),
    //         onTap: () {},
    //         child: Padding(
    //           padding: EdgeInsets.all(0),
    //           child: IconButton(
    //             icon: Icon(Icons.volume_mute),
    //             color: _pinColor,
    //             iconSize: 20,
    //             hoverColor: _hoverGrey,
    //             splashRadius: 20,
    //             onPressed: () {
    //               setState(() {
    //                 _pinIsPressed = !_pinIsPressed;
    //                 if (_pinIsPressed) {
    //                   _pinBorderColor = _allBlue;
    //                   _pinColor = _allBlue;
    //                 }
    //                 else {
    //                   _pinBorderColor = Colors.transparent;
    //                   _pinColor = Colors.grey[600];
    //                 }
    //               }
    //               );
    //             },
    //           ),
    //         )
    //     ),
    //   );
  }
}
