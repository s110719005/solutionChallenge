import 'package:flutter/material.dart';
import 'package:flutter_application_1/right_chatroom/navigatorButton.dart';
import 'package:flutter_application_1/widget/Notifications_fix.dart';
//import 'Notifications.dart';
//import 'navigatorButton.dart';

class top_bar extends StatefulWidget {
  @override
  _top_barState createState() => _top_barState();
}

class _top_barState extends State<top_bar> {
  int _selectedItem = 6;
  selectItem(index) {
    setState(() {
      _selectedItem = index;
    });
  }

  List<String> navigatorIconPath = [
    'icon/right_chatroom/Membericon.png',
    'icon/right_chatroom/Announceicon.png',
    'icon/right_chatroom/QAicon.png',
    'icon/right_chatroom/Chaticon.png',
  ];
  List<String> navigatorPage = [
    '/W1',
    '/W2',
    '/W3',
    '/W4',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 80,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 490,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Image.asset(
                          'icon/presentation_section/presentationIconm.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Presentation Section',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 2.4,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(flex: 1059, child: Notifications_fix()),
            Expanded(
                flex: 371,
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
                ))
          ],
        ),
      ),
    );
  }
}
