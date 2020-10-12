import 'package:flutter/material.dart';
import 'package:movieda/data/api.dart';

var filmsData;
var filmsDatas;
String image;
String image1;
String image2;
String image3;
String image4;
String image5;
String title1;
String title2;
String title3;
String title4;
String title5;
String rating1;
String rating2;
String rating3;
String rating4;
String rating5;
String filmImage0;
String filmImage1;
String filmImage2;
String filmImage3;
String filmImage4;
String filmImage5;
String filmImage6;
String filmImage7;
String filmImage8;
String filmImage9;
String filmImage10;
String filmImage11;
String filmImage12;
String filmImage13;
String filmImage14;
String filmImage15;
String filmImage16;
String filmImage17;
String filmImage18;
String filmImage19;
String filmImage20;
String film;
int index = 0;

void filmInfos() async {
  filmsDatas = await getData();
  filmInfo1(filmsDatas);
  filmInfo2(filmsDatas);
  filmInfo3(filmsDatas);
  filmInfo4(filmsDatas);
  filmInfo5(filmsDatas);
  getImage(filmsDatas);
}

Future getData() async {
  Api api = Api();
  filmsData = await api.getPfilms();
  return filmsData;
}

void filmInfo1(var option) async {
  title1 = await option['items'][0]['title'];
  rating1 = await option['items'][0]['imDbRating'] != ""
      ? await option['items'][0]['imDbRating']
      : "0";
}

void filmInfo2(var option) async {
  title2 = await option['items'][1]['title'];
  rating2 = await option['items'][1]['imDbRating'] != ""
      ? await option['items'][1]['imDbRating']
      : "0";
}

void filmInfo3(var option) async {
  title3 = await option['items'][2]['title'];
  rating3 = await option['items'][2]['imDbRating'] != ""
      ? await option['items'][2]['imDbRating']
      : "0";
}

void filmInfo4(var option) async {
  title4 = await option['items'][3]['title'];
  rating4 = (await option['items'][3]['imDbRating']) != ""
      ? await option['items'][3]['imDbRating']
      : "0";
}

void filmInfo5(var option) async {
  title5 = await option['items'][4]['title'];
  rating5 = await option['items'][4]['imDbRating'] != ""
      ? await option['items'][4]['imDbRating']
      : "0";
}

getImage(var option) async {
  filmImage0 = await option['items'][0]['image'];
  filmImage1 = await option['items'][1]['image'];
  filmImage2 = await option['items'][2]['image'];
  filmImage3 = await option['items'][3]['image'];
  filmImage4 = await option['items'][4]['image'];
  filmImage5 = await option['items'][5]['image'];
  filmImage6 = await option['items'][6]['image'];
  filmImage7 = await option['items'][7]['image'];
  filmImage8 = await option['items'][8]['image'];
  filmImage9 = await option['items'][9]['image'];
  filmImage10 = await option['items'][10]['image'];
  filmImage11 = await option['items'][11]['image'];
  filmImage12 = await option['items'][12]['image'];
  filmImage13 = await option['items'][13]['image'];
  filmImage14 = await option['items'][14]['image'];
  filmImage15 = await option['items'][15]['image'];
  filmImage16 = await option['items'][16]['image'];
  filmImage17 = await option['items'][17]['image'];
  filmImage18 = await option['items'][18]['image'];
  filmImage19 = await option['items'][19]['image'];
}

//! CODE FOR RETRIEVING PMOVIES DATA FROM THE IMDB API WEBSITE

var ptvData;
var ptvDatas;
String tvimage;
String tvimage1;
String tvimage2;
String tvimage3;
String tvimage4;
String tvimage5;
String tvtitle1;
String tvtitle2;
String tvtitle3;
String tvtitle4;
String tvtitle5;
String tvrating1;
String tvrating2;
String tvrating3;
String tvrating4;
String tvrating5;
String tvImage0;
String tvImage1;
String tvImage2;
String tvImage3;
String tvImage4;
String tvImage5;
String tvImage6;
String tvImage7;
String tvImage8;
String tvImage9;
String tvImage10;
String tvImage11;
String tvImage12;
String tvImage13;
String tvImage14;
String tvImage15;
String tvImage16;
String tvImage17;
String tvImage18;
String tvImage19;
String tvImage20;

void tvInfos() async {
  ptvDatas = await getTvData();
  tvInfo1(ptvDatas);
  tvInfo2(ptvDatas);
  tvInfo3(ptvDatas);
  tvInfo4(ptvDatas);
  tvInfo5(ptvDatas);
  getTVShowsImage(ptvDatas);
}

Future getTvData() async {
  TVApi tvApi = TVApi();
  ptvData = await tvApi.getPTV();
  return ptvData;
}

void tvInfo1(var tvoption) async {
  tvtitle1 = await tvoption['items'][0]['title'];
  tvrating1 = await tvoption['items'][0]['imDbRating'] != ""
      ? await tvoption['items'][0]['imDbRating']
      : "0";
}

void tvInfo2(var tvoption) async {
  tvtitle2 = await tvoption['items'][1]['title'];
  tvrating2 = await tvoption['items'][1]['imDbRating'] != ""
      ? await tvoption['items'][1]['imDbRating']
      : "0";
}

void tvInfo3(var tvoption) async {
  tvtitle3 = await tvoption['items'][2]['title'];
  tvrating3 = await tvoption['items'][2]['imDbRating'] != ""
      ? await tvoption['items'][2]['imDbRating']
      : "0";
}

void tvInfo4(var tvoption) async {
  tvtitle4 = await tvoption['items'][3]['title'];
  tvrating4 = await tvoption['items'][3]['imDbRating'] != ""
      ? await tvoption['items'][3]['imDbRating']
      : "0";
}

void tvInfo5(var tvoption) async {
  tvtitle5 = await tvoption['items'][4]['title'];
  tvrating5 = await tvoption['items'][4]['imDbRating'] != ""
      ? await tvoption['items'][4]['imDbRating']
      : "0";
}

getTVShowsImage(var option) async {
  tvImage0 = await option['items'][0]['image'];
  print(tvImage0);
  tvImage1 = await option['items'][1]['image'];
  tvImage2 = await option['items'][2]['image'];
  tvImage3 = await option['items'][3]['image'];
  tvImage4 = await option['items'][4]['image'];
  tvImage5 = await option['items'][5]['image'];
  tvImage6 = await option['items'][6]['image'];
  tvImage7 = await option['items'][7]['image'];
  tvImage8 = await option['items'][8]['image'];
  tvImage9 = await option['items'][9]['image'];
  tvImage10 = await option['items'][10]['image'];
  tvImage11 = await option['items'][11]['image'];
  tvImage12 = await option['items'][12]['image'];
  tvImage13 = await option['items'][13]['image'];
  tvImage14 = await option['items'][14]['image'];
  tvImage15 = await option['items'][15]['image'];
  tvImage16 = await option['items'][16]['image'];
  tvImage17 = await option['items'][17]['image'];
  tvImage18 = await option['items'][18]['image'];
  tvImage19 = await option['items'][19]['image'];
}

//! CODE FOR COMING SOON MOVIES '

var csoonDatas;
var csoondata;
String csoonImage1;
String csoonImage2;
String csoonImage3;
String csoonTitle1;
String csoonTitle2;
String csoonTitle3;
String csoonReleaseDate1;
String csoonReleaseDate2;
String csoonReleaseDate3;

void csoonData() async {
  csoonDatas = await getCSoon();
  getCsoonImage1(csoonDatas);
  getCsoonImage2(csoonDatas);
  getCsoonImage3(csoonDatas);
}

Future getCSoon() {
  Csoon csoon = Csoon();
  csoondata = csoon.getCsoon();
  return csoondata;
}

void getCsoonImage1(var csoonoption) async {
  csoonImage1 = await csoonoption['items'][0]['image'];
  csoonTitle1 = await csoonoption['items'][0]['title'];
  csoonReleaseDate1 = await csoonoption['items'][0]['releaseState'];
}

void getCsoonImage2(var csoonoption) async {
  csoonImage2 = await csoonoption['items'][1]['image'];
  csoonTitle2 = await csoonoption['items'][1]['title'];
  csoonReleaseDate2 = await csoonoption['items'][1]['releaseState'];
}

void getCsoonImage3(var csoonoption) async {
  csoonImage3 = await csoonoption['items'][2]['image'];
  csoonTitle3 = await csoonoption['items'][2]['title'];
  csoonReleaseDate3 = await csoonoption['items'][2]['releaseState'];
}

//! CODE FOR SEARCHING MOVIES
var searchdata;
var searchDatas;
Future getSearch(movieName) {
  Search search = Search();

  searchdata = search.getSearchResults(movieName);

  return searchdata;
}

searchData(movieName) async {
  searchDatas = await getSearch(movieName);
  return searchDatas;
}

//! CODE FOR RECOMMENDED MOVIES '

var recomDatas;
var recomdata;
String recomImage1;
String recomImage2;
String recomImage3;
String recomImage4;
String recomImage5;
String recomImage6;
String recomImage7;
String recomImage8;
String recomImage9;
String recomImage10;
String recomImage11;
String recomImage12;
String recomImage13;
String recomImage14;
String recomImage15;
String recomImage16;
String recomImage17;
String recomImage18;
String recomImage19;
String recomImage20;
String recomTitle1;
String recomTitle2;
String recomTitle3;
String recomTitle4;
String recomTitle5;
String recomRating1;
String recomRating2;
String recomRating3;
String recomRating4;
String recomRating5;

void recomData() async {
  recomDatas = await getRecom();
  getrecomImage1(recomDatas);
  getrecomImage2(recomDatas);
  getrecomImage3(recomDatas);
  getrecomImage4(recomDatas);
  getrecomImage5(recomDatas);
  getRecomImage(recomDatas);
}

Future getRecom() {
  RecommendedMovies recom = RecommendedMovies();
  recomdata = recom.getRecommendedMovies();
  return recomdata;
}

void getrecomImage1(var recomoption) async {
  recomImage1 = await recomoption['items'][0]['image'];
  recomTitle1 = await recomoption['items'][0]['title'];
  recomRating1 = await recomoption['items'][0]['imDbRating'];
}

void getrecomImage2(var recomoption) async {
  recomImage2 = await recomoption['items'][1]['image'];
  recomTitle2 = await recomoption['items'][1]['title'];
  recomRating2 = await recomoption['items'][1]['imDbRating'];
}

void getrecomImage3(var recomoption) async {
  recomImage3 = await recomoption['items'][2]['image'];
  recomTitle3 = await recomoption['items'][2]['title'];
  recomRating3 = await recomoption['items'][2]['imDbRating'];
}

void getrecomImage4(var recomoption) async {
  recomImage4 = await recomoption['items'][3]['image'];
  recomTitle4 = await recomoption['items'][3]['title'];
  recomRating4 = await recomoption['items'][3]['imDbRating'];
}

void getrecomImage5(var recomoption) async {
  recomImage5 = await recomoption['items'][4]['image'];
  recomTitle5 = await recomoption['items'][4]['title'];
  recomRating5 = await recomoption['items'][4]['imDbRating'];
}

getRecomImage(var option) async {
  recomImage6 = await option['items'][5]['image'];
  recomImage7 = await option['items'][6]['image'];
  recomImage7 = await option['items'][7]['image'];
  recomImage8 = await option['items'][8]['image'];
  recomImage9 = await option['items'][9]['image'];
  recomImage10 = await option['items'][10]['image'];
  recomImage11 = await option['items'][11]['image'];
  recomImage12 = await option['items'][12]['image'];
  recomImage13 = await option['items'][13]['image'];
  recomImage14 = await option['items'][14]['image'];
  recomImage15 = await option['items'][15]['image'];
  recomImage16 = await option['items'][16]['image'];
  recomImage17 = await option['items'][17]['image'];
  recomImage18 = await option['items'][18]['image'];
  recomImage19 = await option['items'][19]['image'];
  recomImage20 = await option['items'][20]['image'];
}

AppBar buildAppBar({
  String photoUrl,
  String title1,
}) {
  return AppBar(
    toolbarHeight: 52,
    backgroundColor: Color(0xff2556D9),
    title: Text(
      title1,
      style: TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.w900,
      ),
    ),
    actions: <Widget>[
      CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(photoUrl),
      ),
      IconButton(
        icon: Icon(
          Icons.more_vert,
          size: 20,
          color: Colors.white,
        ),
        onPressed: null,
      ),
    ],
  );
}

// SharedPreferences prefs;
// GoogleSignIn googleSignIn = GoogleSignIn();

// Future<Null> handleSignOut() async {
//   prefs = await SharedPreferences.getInstance();
//   await FirebaseAuth.instance.signOut();
//   if (await googleSignIn.isSignedIn() == true) {
//     await googleSignIn.disconnect();
//     await googleSignIn.signOut();
//   }

//   await prefs.clear();

//   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
//     return WelcomeScreen();
//   }), (route) => false);
// }

// itemMenuPress({Choice choice}) {
//   if (choice.title == 'Log out') {
//     print('started work');
//     handleSignOut();
//   } else if (choice.title == 'Settings') {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) {
//           return WelcomeScreen();
//         },
//       ),
//     );
//   }
// }

// List<Choice> choices = <Choice>[
//   Choice(title: 'Log out', icon: Icons.exit_to_app),
//   Choice(title: 'Settings', icon: Icons.settings)
// ];

// class Choice {
//   Choice({this.icon, this.title});
//   final String title;
//   final IconData icon;
// }
// action[
//    PopupMenuButton<Choice>(
//           onSelected: itemMenuPress(navigate1: navigate1, navigate2: navigate2),
//           itemBuilder: (context) {
//             return choices
//                 .map(
//                   (Choice choice) => PopupMenuItem<Choice>(
//                     value: choice,
//                     child: Row(
//                       children: [
//                         Icon(
//                           choice.icon,
//                           color: Colors.black,
//                         ),
//                         Container(
//                           width: 10.0,
//                         ),
//                         Text(
//                           choice.title,
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//                 .toList();
//           }),
// ]
