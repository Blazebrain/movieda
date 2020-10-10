import 'package:flutter/material.dart';
import 'package:movieda/pages/top_250films.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import '../widgets/pfilms.dart';
import 'package:movieda/data/global.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.clip,
              children: <Widget>[
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Color(0xffFFF2DB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 250),
                        padding: EdgeInsets.only(top: 8, bottom: 8, left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "10",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                            Text(
                              "Badges",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 250),
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "100",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                            Text(
                              "Badges",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 250),
                        padding: EdgeInsets.only(top: 8, bottom: 8, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "281",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Color(0xff2556D9),
                  ),
                  height: 250,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          "Adegoke David",
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 75,
                        child: CircleAvatar(
                          radius: 58,
                          backgroundColor: Color(0xff5E82E3),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/passport.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            FlatButton(
                              focusColor: Color(0xff233C78),
                              color: Colors.yellow,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              onPressed: null,
                              child: Text(
                                "Action",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                            ),
                            FlatButton(
                              focusColor: Color(0xff233C78),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              onPressed: null,
                              child: Text(
                                "Comedy",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                            ),
                            FlatButton(
                              focusColor: Color(0xff233C78),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              onPressed: null,
                              child: Text(
                                "Drama",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                            ),
                            FlatButton(
                              focusColor: Color(0xff233C78),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              onPressed: null,
                              child: Text(
                                "Thriller",
                                style: TextStyle(
                                  fontFamily: 'RobotoSlab',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            FlatButton(
                              focusColor: Color(0xff233C78),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              onPressed: null,
                              child: Text(
                                "Adventure",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 7),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Favourites",
                          style: TextStyle(
                            color: Color(0xff626C7C),
                            fontSize: 20,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "see more",
                          style: TextStyle(
                            color: Color(0xff8E8E8E),
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyPFilms(
                          image: image1,
                          title: title1,
                          rating: rating1,
                        ),
                        MyPFilms(
                          image: image2,
                          title: title2,
                          rating: rating2,
                        ),
                        MyPFilms(
                          image: image3,
                          title: title3,
                          rating: rating3,
                        ),
                        MyPFilms(
                          image: image4,
                          title: title4,
                          rating: rating4,
                        ),
                        MyPFilms(
                          image: image5,
                          title: title5,
                          rating: rating5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recommended",
                          style: TextStyle(
                            color: Color(0xff626C7C),
                            fontSize: 20,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Recommended();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "see more",
                            style: TextStyle(
                              color: Color(0xff8E8E8E),
                              fontFamily: 'RobotoSlab',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/peninsula.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: 220,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 40, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "PENINSULA",
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            color: Colors.grey[200],
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "COMING SOON!!!",
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            color: Colors.blueGrey[200],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarr(
        colorProfile: Color(0xff2556D9),
        colorCredit: null,
        colorHome: null,
        onPressHome: () => Navigator.pop(context),
        onPressProfile: null,
        onPressCredit: null,
      ),
      floatingActionButton: FloatingActionButtonn(
        icon: Icons.search,
        onPress: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
