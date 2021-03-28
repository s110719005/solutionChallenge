import 'package:flutter/material.dart';

// Step 1: Define a Callback.
typedef void IntCallback(int id);

class Son extends StatefulWidget {
  // Step 2: Configre the child to expect a callback in the constructor(next 2 lines):
  final IntCallback onSonChanged;
  Son({@required this.onSonChanged});

  @override
  _SonState createState() => _SonState();
}

class _SonState extends State<Son> {
  int elementId = 3;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        // Step 3: On specific action(e.g onPressed/
        // onTap/onLoad.. onWhatEver) trigger the callback
        // with the data you want to pass to the parent.
        // Data will be passed as parameter(see elementId):
        widget.onSonChanged(elementId);
        // Done in the child.
      },
      child: Text('Click me to call the callback!'),
    );
  }
}
