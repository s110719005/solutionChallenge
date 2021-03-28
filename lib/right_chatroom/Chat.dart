import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController myController = new TextEditingController();
  int _value = 1;
  List<String> picUrl = ['img/thumbnail/06.jpg'];
  List<String> question = [
    'Impossible considered invitation him men instrument saw celebrated unpleasant.'
  ];
  List<String> name = ['Danish Morton '];
  List<String> reply = ['4:16PM'];
  List<Color> backColor = [Colors.white];

  Color _hoverSendColor = Colors.grey[600];
  Color _allBlue = Colors.blue[700];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: ListView.builder(
                  shrinkWrap: true, //包著
                  itemCount: _value,
                  itemBuilder: (context, index) => announceText(
                      picUrl[index],
                      question[index],
                      name[index],
                      reply[index],
                      backColor[index])),
            ),
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
                          hintText: 'Send a message',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[250],
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
      _hoverSendColor = Colors.grey[600];
    });
  }

  void _send() {
    if (myController.text != null) {
      setState(() {
        _value++;
        picUrl.add('img/thumbnail/01.jpg');
        question.add(myController.text);
        name.add('You ');
        reply.add('4:18PM');
        backColor.add(Colors.blue[100]);
        //print(question);
      });
      myController.clear();
    }
  }

  Widget announceText(
      String pic, String str, String name, String replytime, Color backColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: backColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: Colors.grey[300],
            offset: Offset(5, 0),
          ),
        ],
      ),
      //margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 80,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ClipOval(
                    child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    pic,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                )),
              )),
          Expanded(
            flex: 320,
            child: Container(
                child: Column(
              children: [
                //Announce name and time
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          //text: 'Danish Morton ',
                          text: name,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[250],
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4,
                          ),
                          children: [
                        TextSpan(
                          //text: 'asked at 4:16PM',
                          text: replytime,
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
