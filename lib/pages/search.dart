import 'package:flutter/material.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/pages/searchResults.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();
  String movieName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.movie),
                hintText: 'type in your movie title...',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
                contentPadding: EdgeInsets.only(left: 20, top: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  // borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                movieName = value;
              },
              onSubmitted: (value) async {
                controller.clear();
                final movieData = await searchData(movieName);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchResults(
                        movieData: movieData,
                      );
                    },
                  ),
                );
              },
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              controller.clear();
              final movieData = await searchData(movieName);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchResults(
                      movieData: movieData,
                    );
                  },
                ),
              );
            },
            child: Text(
              'Get Movies',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
