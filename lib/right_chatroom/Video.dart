import 'package:flutter/material.dart';
import 'pinVideo.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(35, 10, 35, 0),
        color: Colors.white,
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.topCenter,
            //   child:
            // ),
            pinVideo(
              isTeacher: true,
              picUrl: 'img/videoCam/11.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: [
                pinVideo(
                  isTeacher: false,
                  picUrl: 'img/videoCam/01.jpg',
                ),
                pinVideo(
                  isTeacher: false,
                  picUrl: 'img/videoCam/02.jpg',
                ),
                pinVideo(
                  isTeacher: false,
                  picUrl: 'img/videoCam/03.jpg',
                ),
                pinVideo(
                  isTeacher: false,
                  picUrl: 'img/videoCam/05.jpg',
                ),
                // Align(
                //   //alignment: Alignment.topCenter,
                //   child: pinVideo(isTeacher: false,),
                // ),
                // Align(
                //   //alignment: Alignment.topCenter,
                //   child: pinVideo(isTeacher: false,),
                // ),
                // Align(
                //   //alignment: Alignment.topCenter,
                //   child: pinVideo(isTeacher: false,),
                // ),
                // Align(
                //   //alignment: Alignment.topCenter,
                //   child: pinVideo(isTeacher: false,),
                // ),
              ],
            )),
          ],
        ));
  }
}
