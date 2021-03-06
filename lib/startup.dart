import 'package:flutter/material.dart';
import 'package:movieda/data/global.dart';
import 'package:movieda/pages/welcome.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // ignore: unused_field
  bool _initialized = false;
  // ignore: unused_field
  bool _error = false;
  @override
  void initState() {
    super.initState();
    onlyloadif();
  }

  // Define an async function to initialize FlutterFire
  Future<void> initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  void onlyloadif() async {
    await initializeFlutterFire();
    await tvInfos();
    await filmInfos();
    await csoonData();
    await recomData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WelcomeScreen();
        },
      ),
    );
  }

  Future<void> tvInfos() async {
    ptvDatas = await getTvData();
    tvInfo1(ptvDatas);
    tvInfo2(ptvDatas);
    tvInfo3(ptvDatas);
    tvInfo4(ptvDatas);
    tvInfo5(ptvDatas);
    getTVShowsImage(ptvDatas);
  }

  Future<void> filmInfos() async {
    filmsDatas = await getData();
    filmInfo1(filmsDatas);
    filmInfo2(filmsDatas);
    filmInfo3(filmsDatas);
    filmInfo4(filmsDatas);
    filmInfo5(filmsDatas);
    getImage(filmsDatas);
  }

  Future<void> csoonData() async {
    csoonDatas = await getCSoon();
    getCsoonImage1(csoonDatas);
    getCsoonImage2(csoonDatas);
    getCsoonImage3(csoonDatas);
  }

  Future<void> recomData() async {
    recomDatas = await getRecom();
    getrecomImage1(recomDatas);
    getrecomImage2(recomDatas);
    getrecomImage3(recomDatas);
    getrecomImage4(recomDatas);
    getrecomImage5(recomDatas);
    getRecomImage(recomDatas);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SplashScreen(
        seconds: 15,
        loaderColor: Colors.white,
        // Color(0xff2556D9),
        loadingText: Text(
          'B L A Z E B R A I N',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            // Color(0xff2556D9),
          ),
        ),
        backgroundColor: Color(0xff45376A),
        // Colors.white,
        photoSize: 100,
        styleTextUnderTheLoader: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          // Color(0xff2556D9),
        ),
        image: Image.asset('images/imagebg5.jpeg'),
        title: Text(
          'MOVIEDA',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            // Color(0xff2556D9),
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}

//Scaffold(
//   backgroundColor: Colors.blue,
//   body: Center(
//     child: SpinKitFadingCircle(
//       color: Colors.white,
//       size: 100,
//     ),
//   ),
// );
