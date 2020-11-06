import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/pages/searchResults.dart';

class Search extends StatefulWidget {
  final title;
  final photoUrl;
  Search({Key key, this.title, this.photoUrl}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _loading = false;
  TextEditingController controller = TextEditingController();
  String movieName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(photoUrl: widget.photoUrl, title1: widget.title),
      body: ModalProgressHUD(
        inAsyncCall: _loading,
        child: Column(
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
                  setState(() {
                    _loading = true;
                  });
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
                  setState(() {
                    _loading = false;
                  });
                },
              ),
            ),
            RaisedButton(
              color: Color(0xff45376A),
              // Colors.blue,
              onPressed: () async {
                setState(() {
                  _loading = true;
                });
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
                setState(() {
                  _loading = false;
                });
              },
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
