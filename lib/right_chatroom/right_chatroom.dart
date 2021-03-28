import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Announcement.dart';
import 'Video.dart';
import 'Member.dart';
import 'QandA.dart';
import 'Chat.dart';
import 'navigatorButton.dart';
import 'NavigationService.dart';

class right_chatroom extends StatefulWidget {
  @override
  _right_chatroomState createState() => _right_chatroomState();
}

class _right_chatroomState extends State<right_chatroom> {
  final TextEditingController myController = new TextEditingController();
  //String _announceStr = 'Impossible considered invitation him men instrument saw celebrated unpleasant.';
  int _value = 1;
  List<String> annoucement = [
    'Impossible considered invitation him men instrument saw celebrated unpleasant.'
  ];

  Color _hoverSendColor = Colors.grey[300];

  bool _muteIsPressed = false;
  Color _muteBorderColor = Colors.white;
  Color _muteHoverColor = Colors.grey[300];

  Color _hoverGrey = Colors.grey[300];
  Color _allWhite = Colors.white;
  Color _allRed = Colors.red[700];
  Color _allBlue = Colors.blue[700];

  bool _pinIsPressed = true;
  Color _pinBorderColor = Colors.blue[700];
  Color _pinColor = Colors.blue[700];
  Color _inkColor = Colors.white;
  Color _hoverColor = Colors.white;

  List<String> navigatorIconPath = [
    'icon/right_chatroom/Membericon.png',
    'icon/right_chatroom/Announceicon.png',
    'icon/right_chatroom/QAicon.png',
    'icon/right_chatroom/Chaticon.png',
  ];
  List<String> navigatorIconText = [
    'Member',
    'Announcement',
    'Question',
    'Chat',
  ];
  List<String> navigatorPage = [
    '/W1',
    '/W2',
    '/W3',
    '/W4',
  ];
  int _selectedItem = 6;

  selectItem(index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 371,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 80,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return navigatorButton(
                          selectItem,
                          index: index,
                          isSelected: _selectedItem == index ? true : false,
                          iconColor: _selectedItem == index
                              ? Colors.blue[700]
                              : Colors.grey[600],
                          iconPath: navigatorIconPath[index],
                          page: navigatorPage[index],
                          //iconText: _selectedItem == index ? navigatorIconText[index] : '',
                        );
                      },
                    ),
                  ),
                ],
              )),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[300],
          ),
          // trytry(),
          Expanded(
            flex: 880,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigationService.instance.navigationKey,
              initialRoute: "/",
              routes: {
                '/': (context) => Video(),
                '/W1': (context) => Member(),
                '/W2': (context) => Announcement(),
                '/W3': (context) => QandA(),
                '/W4': (context) => Chat(),
              },
            ),
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[300],
          ),
          Flexible(
              flex: 120,
              child: Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.white,
                  child: mute(),
                ),
              )),
        ],
      ),
    );
  }

  Color _muteColor = Colors.grey[600];
  Image _changeIcon = new Image.asset(
    'icon/right_chatroom/mute.png',
    color: Colors.grey[600],
  );
  String _hoverMuteText = 'Mute Others';
  bool a = false;

  Widget mute() {
    _iconMute() {
      _changeIcon = new Image.asset(
        'icon/right_chatroom/mute.png',
        color: Colors.grey[600],
      );
      _hoverMuteText = 'Mute Others';
    }

    _iconUnMute() {
      _changeIcon = new Image.asset(
        'icon/right_chatroom/unmute.png',
        color: _allRed,
      );
      _hoverMuteText = 'Unmute Others';
    }

    //  void _hoverBorder(PointerEvent details){
    //    if(_muteBorderColor==_allRed){
    //      a = true;
    //      setState(() {
    //        _muteBorderColor = Colors.transparent;
    //      });
    //    }
    //  }
    //  void _exitBorder(PointerEvent details){
    //    if(a){
    //      setState(() {
    //        _muteBorderColor = _allRed;
    //        a = false;
    //      });
    //    }
    // }
    return Material(
      color: Colors.white,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: _muteBorderColor, width: 1.5),
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: InkWell(
            borderRadius: BorderRadius.circular(1000),
            onTap: () {},
            child: Tooltip(
                message: _hoverMuteText,
                verticalOffset: -50,
                //margin: EdgeInsets.only(left: 50),
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
                  fontSize: 16,
                  //letterSpacing: 1.28,
                  color: Colors.grey,
                ),
                child: MouseRegion(
                  // onHover: _hoverBorder,
                  // onExit: _exitBorder,
                  child: Transform.scale(
                    scale: 1.5,
                    child: IconButton(
                      icon: _changeIcon,
                      iconSize: 24,
                      hoverColor: Colors.grey[300],
                      splashRadius: 13,
                      onPressed: () {
                        setState(() {
                          _muteIsPressed = !_muteIsPressed;
                          if (_muteIsPressed) {
                            _muteBorderColor = _allRed;
                            _iconUnMute();
                          } else {
                            _muteBorderColor = Colors.transparent;
                            _iconMute();
                          }
                        });
                      },
                    ),
                  ),
                ))),
      ),
    );
  }
}

class right_chatroom2 extends StatefulWidget {
  @override
  _right_chatroom2State createState() => _right_chatroom2State();
}

class _right_chatroom2State extends State<right_chatroom2> {
  final TextEditingController myController = new TextEditingController();
  //String _announceStr = 'Impossible considered invitation him men instrument saw celebrated unpleasant.';
  int _value = 1;
  List<String> annoucement = [
    'Impossible considered invitation him men instrument saw celebrated unpleasant.'
  ];

  Color _hoverSendColor = Colors.grey[300];

  bool _muteIsPressed = false;
  Color _muteBorderColor = Colors.white;
  Color _muteHoverColor = Colors.grey[300];

  Color _hoverGrey = Colors.grey[300];
  Color _allWhite = Colors.white;
  Color _allRed = Colors.red[700];
  Color _allBlue = Colors.blue[700];

  bool _pinIsPressed = true;
  Color _pinBorderColor = Colors.blue[700];
  Color _pinColor = Colors.blue[700];
  Color _inkColor = Colors.white;
  Color _hoverColor = Colors.white;

  List<String> navigatorIconPath = [
    'icon/right_chatroom/Membericon.png',
    'icon/right_chatroom/Announceicon.png',
    'icon/right_chatroom/QAicon.png',
    'icon/right_chatroom/Chaticon.png',
  ];
  List<String> navigatorIconText = [
    'Member',
    'Announcement',
    'Question',
    'Chat',
  ];
  List<String> navigatorPage = [
    '/W1',
    '/W2',
    '/W3',
    '/W4',
  ];
  int _selectedItem = 6;

  selectItem(index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 371,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 80,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return navigatorButton(
                          selectItem,
                          index: index,
                          isSelected: _selectedItem == index ? true : false,
                          iconColor: _selectedItem == index
                              ? Colors.blue[700]
                              : Colors.grey[600],
                          iconPath: navigatorIconPath[index],
                          page: navigatorPage[index],
                          //iconText: _selectedItem == index ? navigatorIconText[index] : '',
                        );
                      },
                    ),
                  ),
                ],
              )),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[300],
          ),
          // trytry(),
          Expanded(
            flex: 880,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigationService.instance.navigationKey,
              initialRoute: "/",
              routes: {
                '/': (context) => Video(),
                '/W1': (context) => Member(),
                '/W2': (context) => Announcement(),
                '/W3': (context) => QandA(),
                '/W4': (context) => Chat(),
              },
            ),
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[300],
          ),
          Flexible(
              flex: 120,
              child: Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.white,
                  child: SizedBox(),
                ),
              )),
        ],
      ),
    );
  }

  Color _muteColor = Colors.grey[600];
  Image _changeIcon = new Image.asset(
    'icon/right_chatroom/mute.png',
    color: Colors.grey[600],
  );
  String _hoverMuteText = 'Mute Others';
  bool a = false;

  Widget mute() {
    _iconMute() {
      _changeIcon = new Image.asset(
        'icon/right_chatroom/mute.png',
        color: Colors.grey[600],
      );
      _hoverMuteText = 'Mute Others';
    }

    _iconUnMute() {
      _changeIcon = new Image.asset(
        'icon/right_chatroom/unmute.png',
        color: _allRed,
      );
      _hoverMuteText = 'Unmute Others';
    }

    //  void _hoverBorder(PointerEvent details){
    //    if(_muteBorderColor==_allRed){
    //      a = true;
    //      setState(() {
    //        _muteBorderColor = Colors.transparent;
    //      });
    //    }
    //  }
    //  void _exitBorder(PointerEvent details){
    //    if(a){
    //      setState(() {
    //        _muteBorderColor = _allRed;
    //        a = false;
    //      });
    //    }
    // }
    return Material(
      color: Colors.white,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: _muteBorderColor, width: 1.5),
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: InkWell(
            borderRadius: BorderRadius.circular(1000),
            onTap: () {},
            child: Tooltip(
                message: _hoverMuteText,
                verticalOffset: -50,
                //margin: EdgeInsets.only(left: 50),
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
                  fontSize: 16,
                  //letterSpacing: 1.28,
                  color: Colors.grey,
                ),
                child: MouseRegion(
                  // onHover: _hoverBorder,
                  // onExit: _exitBorder,
                  child: Transform.scale(
                    scale: 1.5,
                    child: IconButton(
                      icon: _changeIcon,
                      iconSize: 24,
                      hoverColor: Colors.grey[300],
                      splashRadius: 13,
                      onPressed: () {
                        setState(() {
                          _muteIsPressed = !_muteIsPressed;
                          if (_muteIsPressed) {
                            _muteBorderColor = _allRed;
                            _iconUnMute();
                          } else {
                            _muteBorderColor = Colors.transparent;
                            _iconMute();
                          }
                        });
                      },
                    ),
                  ),
                ))),
      ),
    );
  }
}
