import 'package:flutter/material.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import 'package:movieda/widgets/more.dart';

class MoreTVShows extends StatefulWidget {
  @override
  _MoreTVShowsState createState() => new _MoreTVShowsState();
}

class _MoreTVShowsState extends State<MoreTVShows> {
  @override
  void initState() {
    super.initState();
    tvInfos();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff2556D9),
        title: new Text(
          "Popular TV Shows",
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
      body: ListView(
        children: [
          More(imagelink: tvImage0),
          More(imagelink: tvImage1),
          More(imagelink: tvImage2),
          More(imagelink: tvImage3),
          More(imagelink: tvImage4),
          More(imagelink: tvImage5),
          More(imagelink: tvImage6),
          More(imagelink: tvImage7),
          More(imagelink: tvImage8),
          More(imagelink: tvImage9),
          More(imagelink: tvImage10),
          More(imagelink: tvImage11),
          More(imagelink: tvImage12),
          More(imagelink: tvImage13),
          More(imagelink: tvImage14),
          More(imagelink: tvImage15),
          More(imagelink: tvImage16),
          More(imagelink: tvImage17),
          More(imagelink: tvImage18),
          More(imagelink: tvImage19),
        ],
      ),
      bottomNavigationBar: BottomAppBarr(),
      floatingActionButton: FloatingActionButtonn(
        icon: Icons.search,
        onPress: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
