import 'package:flutter/material.dart';

class sender extends StatefulWidget {
  @override
  _senderState createState() => _senderState();
}

class _senderState extends State<sender> {
  final TextEditingController myController = new TextEditingController();
  int _value = 1;
  List<String> question = [
    'Impossible considered invitation him men instrument saw celebrated unpleasant.'
        '123'
  ];

  Color _hoverSendColor = Colors.grey;
  Color _allBlue = Colors.blue[700];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
                cursorColor: Colors.grey,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[900],
                ),
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[900]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[900]),
                  ),
                  hintText: 'Ask a question',
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
        question.add(myController.text);
        print(question);
      });
      myController.clear();
    }
  }
}
