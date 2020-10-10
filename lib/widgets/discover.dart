import 'package:flutter/material.dart';

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
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: NetworkImage(movieImage),
                  fit: BoxFit.fill,
                ),
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              padding: EdgeInsets.only(top: 40, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movietitle,
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      color: Colors.grey[200],
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "COMING SOON!!! ",
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      color: Colors.blueGrey[200],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    movieReleaseDate,
                    style: TextStyle(
                      fontFamily: 'RobotoSlab',
                      color: Colors.blueGrey[200],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
