import 'package:flutter/material.dart';
import 'package:movieda/pages/profile.dart';
import 'package:movieda/pages/search.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/global.dart';
import '../widgets/bottomAppBarr.dart';
import '../widgets/discover.dart';
import '../widgets/floatingActionButton.dart';
import '../widgets/genreButtons.dart';
import '../widgets/moviesOrTvshows.dart';
import '../widgets/pfilms.dart';
import 'more_pfilms.dart';
import 'tv_shows.dart';

class MovieApp extends StatefulWidget {
  final String nickName;
  final photUrl;
  const MovieApp({Key key, this.nickName, this.photUrl}) : super(key: key);
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                color: Color(0xff45376A),
                // Color(0xff2556D9),
              ),
              height: 220,
              width: double.infinity,
              padding: EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      'Welcome ${widget.nickName}',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      MoviesOrTvShows(
                        color: Colors.white,
                        title: 'Movies',
                        icon: Icons.theaters,
                        onPress: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MoviesOrTvShows(
                        color: Colors.lightBlueAccent,
                        // Color(0xff9BBCC6),
                        // Color(0xff789DFB),
                        title: 'TV Shows',
                        icon: Icons.tv,
                        onPress: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TvScreen(
                            nickName: widget.nickName,
                            photoUrl: widget.photUrl,
                          );
                        })),
                      )
                    ],
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
            Container(
              margin: EdgeInsets.only(left: 20, top: 15),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Popular",
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
                                  return MoreMovies(
                                    photoUrl: widget.photUrl,
                                  );
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
                          image: filmImage4,
                          title: title4,
                          rating: rating4,
                        ),
                        MyPFilms(
                          image: filmImage5,
                          title: title5,
                          rating: rating5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Discover(
              movieImage: csoonImage1,
              movietitle: csoonTitle1,
              movieReleaseDate: csoonReleaseDate1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarr(
        colorHome: Color(0xff45376A),
        // Color(0xff2556D9),
        colorCredit: null,
        colorProfile: null,
        onPressHome: null,
        onPressProfile: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(
              nickName: widget.nickName,
              photoUrl: widget.photUrl,
            ),
          ),
        ),
        onPressCredit: null,
      ),
      floatingActionButton: FloatingActionButtonn(
        icon: Icons.search,
        onPress: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Search(
                    title: "Search Movies",
                    photoUrl: widget.photUrl,
                  )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
