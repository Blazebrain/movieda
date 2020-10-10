import 'package:flutter/material.dart';

class BottomAppBarr extends StatelessWidget {
  final Function onPressHome;
  final Function onPressProfile;
  final Function onPressCredit;
  final Color colorHome;
  final Color colorCredit;
  final Color colorProfile;
  BottomAppBarr({
    Key key,
    this.onPressHome,
    this.onPressProfile,
    this.onPressCredit,
    this.colorHome,
    this.colorCredit,
    this.colorProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.home,
                color: colorHome != null ? colorHome : Colors.grey,
                size: 30,
              ),
              onPressed: onPressHome,
            ),
          ),
          Expanded(
            child: IconButton(
              focusColor: Color(0xff2556D9),
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: colorProfile != null ? colorProfile : Colors.grey,
              ),
              onPressed: onPressProfile,
            ),
          ),
          Expanded(
            child: IconButton(
              focusColor: Color(0xff2556D9),
              icon: Icon(
                Icons.credit_card,
                size: 30,
                color: colorCredit != null ? colorCredit : Colors.grey,
              ),
              onPressed: onPressCredit,
            ),
          ),
          Expanded(
            child: Text(""),
          )
        ],
      ),
    );
  }
}
