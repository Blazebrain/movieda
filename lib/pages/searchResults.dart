import 'package:flutter/material.dart';
import 'package:movieda/widgets/more.dart';

class SearchResults extends StatefulWidget {
  final movieData;
  SearchResults({
    Key key,
    this.movieData,
  }) : super(key: key);

  @override
  _SearchResultsState createState() =>
      _SearchResultsState(movieData: movieData);
}

class _SearchResultsState extends State<SearchResults> {
  final movieData;

  _SearchResultsState({this.movieData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2556D9),
        title: new Text(
          movieData['expression'],
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
        itemCount: movieData['results'].length,
        itemBuilder: (context, index) => More(
          imagelink: movieData['results'][index]['image'],
        ),
      ),
    );
  }
}
