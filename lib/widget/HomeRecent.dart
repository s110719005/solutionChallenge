import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/MyIcon.dart';

class HomeRecent extends StatefulWidget {
  @override
  _HomeRecentState createState() => _HomeRecentState();
}

class _HomeRecentState extends State<HomeRecent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 170, right: 170),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Recent class',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MyIcon(
                        iconUrl: 'icon/HomeClassRecent/list.png',
                        iconHoverUrl: 'icon/HomeClassRecent/list_active.png',
                        iconSize: 40,
                        borderActiveColor: Colors.blueAccent[700],
                        borderHoverColor: Colors.transparent,
                        borderWidth: 2,
                        splashColor: Colors.grey[200],
                        iconColor: Colors.grey[700],
                        iconHoverColor: Colors.grey[700],
                        iconFunction: () {},
                      ),
                      SizedBox(width: 10),
                      MyIcon(
                        iconUrl: 'icon/HomeClassRecent/sort.png',
                        iconHoverUrl: 'icon/HomeClassRecent/sort_active.png',
                        iconSize: 40,
                        borderActiveColor: Colors.blueAccent[700],
                        borderHoverColor: Colors.transparent,
                        borderWidth: 2,
                        splashColor: Colors.grey[200],
                        iconColor: Colors.grey[700],
                        iconHoverColor: Colors.grey[700],
                        iconFunction: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              //height: 300,
              constraints: BoxConstraints(maxHeight: 300, minHeight: 270),
              child: ListView(
                children: [
                  GridView.count(
                    childAspectRatio: 250 / 220,
                    padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: [
                      Classes(
                        className: 'Dessert Making',
                        classDate: 'Opended Mar 24, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/01.png',
                      ),
                      Classes(
                        className: 'Family Recipes',
                        classDate: 'Opended Mar 20, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/02.png',
                      ),
                      Classes(
                        className: 'Skills of Presentation',
                        classDate: 'Opended Feb 29, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/03.png',
                      ),
                      Classes(
                        className: 'Novels Reading',
                        classDate: 'Opended Feb 11, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/04.png',
                      ),
                      Classes(
                        className: 'Essay Writing',
                        classDate: 'Opended Jan 23, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/05.png',
                      ),
                      Classes(
                        className: 'React Courses',
                        classDate: 'Opended Jan 21, 2021',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/06.png',
                      ),
                      Classes(
                        className: 'Magazine Design',
                        classDate: 'Opended Dec 31, 2020',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/07.png',
                      ),
                      Classes(
                        className: 'Photography',
                        classDate: 'Opended Dec 09, 2020',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/08.png',
                      ),
                      Classes(
                        className: 'Flutter',
                        classDate: 'Opended Oct 13, 2020',
                        navNumber: 1,
                        classImageUrl: 'img/classPreview/09.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Classes extends StatefulWidget {
  final String className;
  final String classDate;
  final Color classbgColor;
  final Icon classIcon;
  final int navNumber;
  final String classImageUrl;
  Classes(
      {this.className,
      this.classbgColor,
      this.classIcon,
      this.navNumber,
      this.classDate,
      this.classImageUrl});

  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: RawMaterialButton(
        onPressed: () {
          if (widget.navNumber == 1) {
            _showPresentationScreen('/presentation');
          }
        },
        padding: EdgeInsets.zero,
        fillColor: Colors.grey[50],
        constraints: BoxConstraints(minWidth: 250, minHeight: 220),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    '${widget.classImageUrl}',
                    width: 250,
                    height: 160,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,

                    //height: 130,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              '${widget.className}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.6,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              '${widget.classDate}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                        iconSize: 24,
                        splashRadius: 20,
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }

  void _showPresentationScreen(String navRoute) {
    Navigator.of(context).pushNamed('$navRoute');
  }
}
