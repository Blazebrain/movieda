import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key key,
    @required this.movieImage,
    @required this.movietitle,
    @required this.movieReleaseDate,
  }) : super(key: key);

  final movieImage;
  final movietitle;
  final movieReleaseDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
