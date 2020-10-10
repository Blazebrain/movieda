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
  image1 = await option['items'][0]['image'];
  title1 = await option['items'][0]['title'];
  rating1 = await option['items'][0]['imDbRating'];
}

void filmInfo2(var option) async {
  image2 = await option['items'][1]['image'];
  title2 = await option['items'][1]['title'];
  rating2 = await option['items'][1]['imDbRating'];
}

void filmInfo3(var option) async {
  image3 = await option['items'][2]['image'];
  title3 = await option['items'][2]['title'];
  rating3 = await option['items'][2]['imDbRating'];
}

void filmInfo4(var option) async {
  image4 = await option['items'][3]['image'];
  title4 = await option['items'][3]['title'];
  rating4 = await option['items'][3]['imDbRating'];
}

void filmInfo5(var option) async {
  image5 = await option['items'][4]['image'];
  title5 = await option['items'][4]['title'];
  rating5 = await option['items'][4]['imDbRating'];
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

// CODE FOR RETRIEVING PMOVIES DATA FROM THE IMDB API WEBSITE

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

Future getTvData() async {
  TVApi tvApi = TVApi();
  ptvData = await tvApi.getPTV();
  return ptvData;
}

void tvInfos() async {
  ptvDatas = await getTvData();
  tvInfo1(ptvDatas);
  tvInfo2(ptvDatas);
  tvInfo3(ptvDatas);
  tvInfo4(ptvDatas);
  tvInfo5(ptvDatas);
  getTVShowsImage(ptvDatas);
}

void tvInfo1(var tvoption) async {
  tvimage1 = await tvoption['items'][0]['image'];
  tvtitle1 = await tvoption['items'][0]['title'];
  tvrating1 = await tvoption['items'][0]['imDbRating'];
}

void tvInfo2(var tvoption) async {
  tvimage2 = await tvoption['items'][1]['image'];
  tvtitle2 = await tvoption['items'][1]['title'];
  tvrating2 = await tvoption['items'][1]['imDbRating'];
}

void tvInfo3(var tvoption) async {
  tvimage3 = await tvoption['items'][2]['image'];
  tvtitle3 = await tvoption['items'][2]['title'];
  tvrating3 = await tvoption['items'][2]['imDbRating'];
}

void tvInfo4(var tvoption) async {
  tvimage4 = await tvoption['items'][3]['image'];
  tvtitle4 = await tvoption['items'][3]['title'];
  tvrating4 = await tvoption['items'][3]['imDbRating'];
}

void tvInfo5(var tvoption) async {
  tvimage5 = await tvoption['items'][4]['image'];
  tvtitle5 = await tvoption['items'][4]['title'];
  tvrating5 = await tvoption['items'][4]['imDbRating'];
}

getTVShowsImage(var option) async {
  tvImage0 = await option['items'][0]['image'];
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

// CODE FOR COMING SOON MOVIES '

var csoonDatas;
var csoondata;
String csoonImage1;
String csoonImage2;
String csoonTitle1;
String csoonTitle2;
String csoonReleaseDate1;
String csoonReleaseDate2;

void csoonData() async {
  csoonDatas = await getCSoon();
  getCsoonImage1(csoonDatas);
  getCsoonImage2(csoonDatas);
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

//CODE FOR SEARCHING MOVIES
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

searchOutput() {
  List movieList = List();
  for (int j = 0; searchDatas['results'][j] != null; j++) {
    for (int i = 0; i <= searchDatas['results'][j]; i++) {
      final image = searchDatas['results'][i]['image'];
      final id = searchDatas['results'][i]['id'];
      final title = searchDatas['results'][i]['title'];
      final description = searchDatas['results'][i]['description'];
      movieList.add([image, id, title, description]);
    }
  }
}
