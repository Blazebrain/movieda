import 'package:flutter/material.dart';
import 'package:movieda/widgets/star.dart';

class More extends StatelessWidget {
  final imagelink;
  const More({
    Key key,
    this.imagelink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      child: Wrap(
        spacing: 10.0,
        direction: Axis.vertical,
        children: <Widget>[
          // CachedNetworkImage(
          //   imageUrl: imagelink,
          //   imageBuilder: (context, imageProvider) => Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: imageProvider,
          //         fit: BoxFit.cover,
          //         // colorFilter: ColorFilter.mode(
          //         //   Colors.red,
          //         //   BlendMode.colorBurn,
          //         // ),
          //       ),
          //     ),
          //     height: 200,
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // placeholder: (context, url) => Container(
          //   child: CircularProgressIndicator(
          //     valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
          //   ),
          //   width: 30,
          //   height: 50,
          //   padding: EdgeInsets.fromLTRB(160, 80, 160, 80),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[300],
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          // ),
          // errorWidget: (context, url, error) => Icon(Icons.error),
          //   width: MediaQuery.of(context).size.width,
          //   height: 200,
          // ),
          Expanded(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imagelink),
                  //  AssetImage('images/peninsula.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    Star(
                      rate: '10',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "The Old Guard",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  width: 20,
                  color: Colors.blueAccent,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Directed by D. Adegoke",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text(
                        "Released 2020",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
