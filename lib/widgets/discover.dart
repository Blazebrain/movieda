import 'package:flutter/material.dart';
import 'package:movieda/widgets/comingSoon.dart';

class Discover extends StatelessWidget {
  final movieImage;
  final movietitle;
  final movieReleaseDate;

  const Discover({
    Key key,
    this.movieImage,
    this.movietitle,
    this.movieReleaseDate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 15, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              "Discover",
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: Color(0xff626C7C),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ComingSoon(
              movieImage: movieImage,
              movietitle: movietitle,
              movieReleaseDate: movieReleaseDate),
        ],
      ),
    );
  }
}
