import 'package:flutter/material.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import 'package:movieda/widgets/star.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => new _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff2556D9),
        title: new Text(
          "Top Movies",
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 20,
            child: Text('AD'),
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Wrap(
              spacing: 10.0,
              direction: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 360,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/cursed.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: <Widget>[
                          Star(),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "The Old Guard",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 20,
                        color: Colors.blueAccent,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Directed by D. Adegoke",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "Released 2020",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBarr(),
      floatingActionButton: FloatingActionButtonn(
        icon: Icons.search,
        onPress: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
