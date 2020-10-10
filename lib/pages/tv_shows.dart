import 'package:flutter/material.dart';
import 'package:movieda/pages/profile.dart';

import '../data/global.dart';
import '../widgets/bottomAppBarr.dart';
import '../widgets/discover.dart';
import '../widgets/floatingActionButton.dart';
import '../widgets/genreButtons.dart';
import '../widgets/moviesOrTvshows.dart';
import '../widgets/pmovies.dart';
import 'homepage.dart';
import 'more_ptvshows.dart';

class TvScreen extends StatefulWidget {
  final String nickName;

  const TvScreen({Key key, this.nickName}) : super(key: key);
  @override
  _TvScreenState createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  @override
  void initState() {
    super.initState();
    tvInfos();
  }

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
                color: Color(0xff2556D9),
              ),
              height: 220,
              width: double.infinity,
              padding: EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      MoviesOrTvShows(
                        color: Color(0xff789DFB),
                        title: 'Movies',
                        icon: Icons.theaters,
                        onPress: () => Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                          return MovieApp();
                        })),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MoviesOrTvShows(
                        color: Colors.white,
                        title: 'TV Shows',
                        icon: Icons.tv,
                        onPress: null,
                      ),
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MoreTVShows();
                            }));
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
                        MyPMovies(
                          image: tvimage1,
                          title: tvtitle1,
                          rating: tvrating1,
                        ),
                        MyPMovies(
                          image: tvimage2,
                          title: tvtitle2,
                          rating: tvrating2,
                        ),
                        MyPMovies(
                          image: tvimage3,
                          title: tvtitle3,
                          rating: tvrating3,
                        ),
                        MyPMovies(
                          image: tvimage4,
                          title: tvtitle4,
                          rating: tvrating4,
                        ),
                        MyPMovies(
                          image: tvimage5,
                          title: tvtitle5,
                          rating: tvrating5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Discover(
              movieImage: csoonImage2,
              movietitle: csoonTitle2,
              movieReleaseDate: csoonReleaseDate2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBarr(
        colorHome: Color(0xff2556D9),
        colorCredit: null,
        colorProfile: null,
        onPressHome: () => Navigator.pop(context),
        onPressProfile: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
          ),
        ),
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
