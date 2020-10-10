import 'package:flutter/material.dart';

class GenreButtons extends StatelessWidget {
  final title;
  final Color color;

  const GenreButtons({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      focusColor: Color(0xff233C78),
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      onPressed: null,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'RobotoSlab',
        ),
      ),
    );
  }
}
