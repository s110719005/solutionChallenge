import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  final TextEditingController myController = new TextEditingController();
  int _value = 1;
  List<String> annoucement = [
    'Impossible considered invitation him men instrument saw celebrated unpleasant.'
  ];

  Color _hoverSendColor = Colors.grey;
  Color _allBlue = Colors.blue[700];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          //announceText(annoucement[0]),
          Expanded(
            child: ListView.builder(
                itemCount: _value,
                itemBuilder: (context, index) =>
                    announceText(annoucement[index])),
          ),
          Spacer(),
          // send
          AspectRatio(
            aspectRatio: 371 / 80,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 271,
                    child: TextField(
                      controller: myController,
                      cursorColor: Colors.grey[600],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.4,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[900]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[900]),
                        ),
                        hintText: 'Make an announcement',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: MouseRegion(
                      onHover: _hoverSend,
                      onExit: _nohoverSend,
                      child: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 20,
                        hoverColor: Colors.transparent,
                        color: _hoverSendColor,
                        onPressed: () {
                          _send();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _hoverSend(PointerEvent details) {
    setState(() {
      _hoverSendColor = _allBlue;
    });
  }

  void _nohoverSend(PointerEvent details) {
    setState(() {
      _hoverSendColor = Colors.grey;
    });
  }

  void _send() {
    if (myController.text != null) {
      setState(() {
        _value++;
        annoucement.add(myController.text);
        print(annoucement);
      });
      myController.clear();
    }
  }

  Widget announceText(String str) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      //margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 70,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ClipOval(
                    child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    'img/thumbnail/01.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                )),
              )),
          Expanded(
            flex: 264,
            child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    //Announce name and time
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: TextSpan(
                              text: 'You ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.4,
                              ),
                              children: [
                            TextSpan(
                              text: '4:16PM',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[500],
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.4,
                              ),
                            ),
                          ])),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        str,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 20,
            child: Container(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
