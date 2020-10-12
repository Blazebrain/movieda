import 'package:flutter/material.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/widgets/bottomAppBarr.dart';
import 'package:movieda/widgets/floatingActionButton.dart';
import 'package:movieda/widgets/more.dart';
import 'package:movieda/widgets/star.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => new _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  void initState() {
    super.initState();
    recomData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
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
      body: ListView(
        children: [
          More(imagelink: recomImage1),
          More(imagelink: recomImage2),
          More(imagelink: recomImage3),
          More(imagelink: recomImage4),
          More(imagelink: recomImage5),
          More(imagelink: recomImage6),
          More(imagelink: recomImage7),
          More(imagelink: recomImage8),
          More(imagelink: recomImage9),
          More(imagelink: recomImage10),
          More(imagelink: recomImage11),
          More(imagelink: recomImage12),
          More(imagelink: recomImage13),
          More(imagelink: recomImage14),
          More(imagelink: recomImage15),
          More(imagelink: recomImage16),
          More(imagelink: recomImage17),
          More(imagelink: recomImage18),
          More(imagelink: recomImage19),
          More(imagelink: recomImage20),
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
