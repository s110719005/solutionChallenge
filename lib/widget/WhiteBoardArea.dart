import 'dart:ui';

import 'package:flutter/material.dart';

class DrawingArea {
  Offset point;
  Paint areaPaint;

  DrawingArea({this.areaPaint, this.point});
}

class WhiteBoardArea extends StatefulWidget {
  final bool ifPenActive;
  final bool ifCursorActive;
  final bool ifEraserActive;
  final bool ifRectActive;
  final bool ifCircleActive;
  final bool ifLineActive;
  final bool ifCurveActive;
  WhiteBoardArea({
    this.ifCircleActive,
    this.ifCursorActive,
    this.ifCurveActive,
    this.ifEraserActive,
    this.ifLineActive,
    this.ifPenActive,
    this.ifRectActive,
  });
  @override
  _WhiteBoardAreaState createState() => _WhiteBoardAreaState();
}

class _WhiteBoardAreaState extends State<WhiteBoardArea> {
  List<DrawingArea> points;
  //List<Offset> eraserPoints = [];

  Color selectedColor;
  double strokeWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 40),
            child: Text(
              'White Board',
              style: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'Segoe',
                fontSize: 16,
                letterSpacing: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Center(
            child: Container(
              //paintingArea
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[200],
                  width: 2,
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.72,
              height: MediaQuery.of(context).size.height * 0.72,
              child: GestureDetector(
                onPanDown: (details) {
                  if (widget.ifPenActive) {
                    this.setState(() {
                      points.add(DrawingArea(
                          point: details.localPosition,
                          areaPaint: Paint()
                            ..strokeCap = StrokeCap.round
                            ..isAntiAlias = true
                            ..color = selectedColor
                            ..strokeWidth = 3));
                    });
                  } else if (widget.ifEraserActive == true) {
                    //points.clear();
                    this.setState(() {
                      points.add(DrawingArea(
                          point: details.localPosition,
                          areaPaint: Paint()
                            ..strokeCap = StrokeCap.round
                            ..isAntiAlias = true
                            ..color = Colors.white
                            ..strokeWidth = 20));
                    });
                  }
                },
                onPanUpdate: (details) {
                  if (widget.ifPenActive) {
                    this.setState(() {
                      points.add(DrawingArea(
                          point: details.localPosition,
                          areaPaint: Paint()
                            ..strokeCap = StrokeCap.round
                            ..isAntiAlias = true
                            ..color = selectedColor
                            ..strokeWidth = 3));
                    });
                  } else if (widget.ifEraserActive == true) {
                    //points.clear();
                    this.setState(() {
                      points.add(DrawingArea(
                          point: details.localPosition,
                          areaPaint: Paint()
                            ..strokeCap = StrokeCap.round
                            ..isAntiAlias = true
                            ..color = Colors.white
                            ..strokeWidth = 20));
                    });
                  }
                },
                onPanEnd: (details) {
                  this.setState(() {
                    points.add(null);
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: CustomPaint(
                    painter: MyCustomPainter(
                      points: points,
                      //eraserPoints: eraserPoints
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  List<DrawingArea> points;
  //List<Offset> eraserPoints;
  Color color;
  double strokeWidth;

  //bool ifPenActive;

  MyCustomPainter({this.points, this.color, this.strokeWidth});
  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
///////PEN//////
    // Paint paint = Paint();
    // paint.color = color;
    // paint.strokeWidth = strokeWidth;
    // paint.isAntiAlias = true;
    // paint.strokeCap = StrokeCap.round;
    for (int i = 0; i < points.length; i++) {
      if (points[i] != null && points[i + 1] != null) {
        Paint paint = points[i].areaPaint;
        canvas.drawLine(points[i].point, points[i + 1].point, paint);
        //canvas.drawPoints(PointMode.points, [points[i]], paint);
      } else if (points[i] != null && points[i + 1] == null) {
        Paint paint = points[i].areaPaint;
        canvas.drawPoints(PointMode.points, [points[i].point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
