import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Star extends StatefulWidget {
  Star({this.rate});
  final rate;
  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  double getRating() {
    var rat = double.parse(widget.rate);
    var rates = rat / 2;
    return rates;
  }

  @override
  void initState() {
    super.initState();
    getRating();
  }

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      color: Color(0xff45376A),
      rating: getRating(),
      isReadOnly: true,
      size: 15,
      filledIconData: Icons.star,
      halfFilledIconData: Icons.star_half,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: true,
      spacing: 2.0,
      onRated: (value) {
        print("rating value -> $value");
        // print("rating value dd -> ${value.truncate()}");
      },
    );
  }
}
