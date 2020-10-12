import 'package:flutter/material.dart';
import 'package:movieda/pages/more_pfilms.dart';
import 'package:movieda/pages/search.dart';
import 'package:movieda/pages/top_250films.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import 'package:movieda/widgets/genreButtons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/pfilms.dart';
import 'package:movieda/data/global.dart';

class Profile extends StatefulWidget {
  final nickName;
  final photoUrl;
  const Profile({Key key, this.nickName, this.photoUrl}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SharedPreferences prefs;
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
                          widget.nickName,
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
                            backgroundImage: NetworkImage(
                              widget.photoUrl,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GenreButtons(
                              title: 'Action',
                            ),
                            GenreButtons(
                              title: 'Comedy',
                            ),
                            GenreButtons(
                              title: 'Drama',
                            ),
                            GenreButtons(
                              title: 'Thriller',
                            ),
                            GenreButtons(
                              title: 'Adventure',
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MoreMovies(photoUrl: widget.photoUrl);
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
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyPFilms(
                          image: filmImage0,
                          title: title1,
                          rating: rating1,
                        ),
                        MyPFilms(
                          image: filmImage1,
                          title: title2,
                          rating: rating2,
                        ),
                        MyPFilms(
                          image: filmImage2,
                          title: title3,
                          rating: rating3,
                        ),
                        MyPFilms(
                          image: filmImage3,
                          title: title4,
                          rating: rating4,
                        ),
                        MyPFilms(
                          image: filmImage4,
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
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyPFilms(
                          image: recomImage1,
                          title: recomTitle1,
                          rating: recomRating1,
                        ),
                        MyPFilms(
                          image: recomImage2,
                          title: recomTitle2,
                          rating: recomRating2,
                        ),
                        MyPFilms(
                          image: recomImage3,
                          title: recomTitle3,
                          rating: recomRating3,
                        ),
                        MyPFilms(
                          image: recomImage4,
                          title: recomTitle4,
                          rating: recomRating4,
                        ),
                        MyPFilms(
                          image: recomImage5,
                          title: recomTitle5,
                          rating: recomRating5,
                        ),
                      ],
                    ),
                  )
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
        onPress: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Search(
            title: "Search",
            photoUrl: widget.photoUrl,
          );
        })),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
