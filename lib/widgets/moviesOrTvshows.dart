import 'package:flutter/material.dart';

class MoviesOrTvShows extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final void Function() onPress;

  const MoviesOrTvShows({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: EdgeInsets.all(0),
      onPressed: onPress,
      icon: Icon(
        icon,
        size: 25,
        color: color,
      ),
      label: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoSlab',
          color: color,
          fontSize: 20,
        ),
      ),
    );
  }
}
