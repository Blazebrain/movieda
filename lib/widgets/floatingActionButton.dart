import 'package:flutter/material.dart';

class FloatingActionButtonn extends StatelessWidget {
  final Function onPress;
  final IconData icon;

  const FloatingActionButtonn({
    Key key,
    @required this.onPress,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
      backgroundColor: Color(0xff45376A),
      elevation: 4.0,
    );
  }
}
