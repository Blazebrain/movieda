import 'package:flutter/material.dart';
import 'star.dart';

class MyPFilms extends StatefulWidget {
  MyPFilms({this.image, this.title, this.rating});
  final image;
  final title;
  final rating;
  @override
  _MyPFilmsState createState() => _MyPFilmsState();
}

class _MyPFilmsState extends State<MyPFilms> {
  String images;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Wrap(
            spacing: 8.0,
            direction: Axis.vertical,
            children: <Widget>[
              Container(
                height: 145,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(widget.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Star(
                    rate: widget.rating,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text("${widget.rating}"),
                ],
              ),
              Container(
                width: 120,
                height: 33,
                child: Expanded(
                  child: Text(
                    '${widget.title}',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
