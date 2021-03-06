import 'package:flutter/material.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import 'package:movieda/widgets/more.dart';

class MoreMovies extends StatefulWidget {
  final photoUrl;

  const MoreMovies({Key key, this.photoUrl}) : super(key: key);
  @override
  _MoreMoviesState createState() => new _MoreMoviesState();
}

class _MoreMoviesState extends State<MoreMovies> {
  String imageUr;
  @override
  void initState() {
    super.initState();
    filmInfos();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(
        photoUrl: widget.photoUrl,
        title1: "Popular Movies",
      ),
      body: ListView(
        children: [
          More(imagelink: filmImage0),
          More(imagelink: filmImage1),
          More(imagelink: filmImage2),
          More(imagelink: filmImage3),
          More(imagelink: filmImage4),
          More(imagelink: filmImage5),
          More(imagelink: filmImage6),
          More(imagelink: filmImage7),
          More(imagelink: filmImage8),
          More(imagelink: filmImage9),
          More(imagelink: filmImage10),
          More(imagelink: filmImage11),
          More(imagelink: filmImage12),
          More(imagelink: filmImage13),
          More(imagelink: filmImage14),
          More(imagelink: filmImage15),
          More(imagelink: filmImage16),
          More(imagelink: filmImage17),
          More(imagelink: filmImage18),
          More(imagelink: filmImage19),
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
