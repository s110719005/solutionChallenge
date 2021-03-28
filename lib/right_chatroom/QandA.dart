import 'package:flutter/material.dart';
import 'QA.dart';
import 'sender.dart';

class QandA extends StatefulWidget {
  @override
  _QandAState createState() => _QandAState();
}

class _QandAState extends State<QandA> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 10,
              child: ListView(
                children: [
                  QA(),
                  QA2(),
                ],
              )),
          Spacer(),
          // send
          sender(),
        ],
      ),
    );
  }
}
