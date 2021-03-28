import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyIcon.dart';

class BottomTools extends StatefulWidget {
  @override
  _BottomToolsState createState() => _BottomToolsState();
}

class _BottomToolsState extends State<BottomTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: RawMaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => ClassDetail(),
                      barrierColor: Colors.transparent);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Class Details',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.expand_less,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Tooltip(
                  message: 'Turn Off Microphone',
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular((5.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 3,
                            spreadRadius: 0.1),
                      ]),
                  textStyle: TextStyle(
                    color: Colors.grey[400],
                    fontFamily: 'Segoe',
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                  ),
                  child: MyIcon(
                    iconUrl: 'icon/BottomToolBar/mute.png',
                    iconHoverUrl: 'icon/BottomToolBar/mute_active.png',
                    iconSize: 50,
                    borderActiveColor: Colors.red[700],
                    borderHoverColor: Colors.red[700],
                    borderWidth: 2,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.grey[700],
                    iconHoverColor: Colors.red[700],
                    iconFunction: () {},
                  ),
                ),
                SizedBox(width: 20),
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    icon: Image.asset(
                      'icon/BottomToolBar/call.png',
                      width: 50,
                      height: 50,
                    ),
                    iconSize: 50,
                    splashRadius: 30,
                    onPressed: _showHomeScreen,
                  ),
                ),
                SizedBox(width: 20),
                Material(
                  type: MaterialType.transparency,
                  child: MyIcon(
                    iconUrl: 'icon/BottomToolBar/video.png',
                    iconHoverUrl: 'icon/BottomToolBar/video_active.png',
                    iconSize: 50,
                    borderActiveColor: Colors.red[700],
                    borderHoverColor: Colors.red[700],
                    borderWidth: 2,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.grey[700],
                    iconHoverColor: Colors.red[700],
                    iconFunction: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Material(
                  type: MaterialType.transparency,
                  child: MyIcon(
                    iconUrl: 'icon/BottomToolBar/sharescreen.png',
                    iconHoverUrl: 'icon/BottomToolBar/sharescreen_active.png',
                    iconSize: 50,
                    borderActiveColor: Colors.red[700],
                    borderHoverColor: Colors.transparent,
                    borderWidth: 2,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.grey[700],
                    iconHoverColor: Colors.grey[700],
                    iconFunction: () {},
                  ),
                ),
                SizedBox(width: 20),
                Material(
                  type: MaterialType.transparency,
                  child: MyIcon(
                    iconUrl: 'icon/BottomToolBar/record.png',
                    iconHoverUrl: 'icon/BottomToolBar/record_active.png',
                    iconSize: 50,
                    borderActiveColor: Colors.red[700],
                    borderHoverColor: Colors.transparent,
                    borderWidth: 2,
                    splashColor: Colors.grey[200],
                    iconColor: Colors.red[700],
                    iconHoverColor: Colors.red[700],
                    iconFunction: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showHomeScreen() {
    Navigator.pop(context);
  }
}

class ClassDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(flex: 80, child: SizedBox()),
        Expanded(flex: 15, child: SizedBox()),
        Expanded(
          flex: 480,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
            padding: EdgeInsets.all(15),
            height: 220,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular((10.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 3,
                      spreadRadius: 0.2),
                ]),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('img/thumbnail/01.jpg'),
                        radius: 20,
                      ),
                    ),
                    Text(
                      'Lilly Chester',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '2/22 3:12PM',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'National Taipei University of Education Department of Physics',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.6,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lecture: Quantum mechanics',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.6,
                  ),
                ),
                Text(
                  '2:00PM~5:00PM on Mondays ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  'by Lilly Chester',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(flex: 975, child: SizedBox()),
        Expanded(flex: 370, child: SizedBox()),
      ],
    );
  }
}
