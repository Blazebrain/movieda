import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:movieda/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TwitterLoginHandler extends StatefulWidget {
  @override
  _TwitterLoginHandlerState createState() => _TwitterLoginHandlerState();
}

class _TwitterLoginHandlerState extends State<TwitterLoginHandler> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  SharedPreferences prefs;
  User currentUser;
  final TwitterLogin twitterLogin = TwitterLogin(
    consumerKey: 'jURtFYp8MWkVbG99E85GBRodJ',
    consumerSecret: 'NeaDmpin8N3nXScdJrXbLYe2HTM1QZFvGFSPjnVl3WS4SIvJ77',
  );

  void _signInWithTwitter(String token, String secret) async {
    prefs = await SharedPreferences.getInstance();
    final AuthCredential credential =
        TwitterAuthProvider.credential(accessToken: token, secret: secret);
    User firebaseUser = (await _auth.signInWithCredential(credential)).user;
    if (firebaseUser != null) {
      QuerySnapshot results = await firestore
          .collection('users')
          .where('id', isEqualTo: firebaseUser.uid)
          .get();

      final List<DocumentSnapshot> documents = results.docs;
      if (documents.length == 0) {
        firestore.collection('users').doc(firebaseUser.uid).set({
          'nickName': firebaseUser.displayName,
          'email': firebaseUser.email,
          'id': firebaseUser.uid,
          'photoUrl': firebaseUser.photoURL,
          'joinedDate': DateTime.now(),
          'createdAt': DateTime.now().millisecondsSinceEpoch,
          'phoneNumber': firebaseUser.phoneNumber,
        });

        currentUser = firebaseUser;
        await prefs.setString('nickName', currentUser.displayName);
        await prefs.setString('id', currentUser.uid);
        await prefs.setString('photoUrl', currentUser.photoURL);
      } else {
        await prefs.setString('nickName', documents[0].get('nickName'));
        await prefs.setString('id', documents[0].get('id'));
        await prefs.setString('photoUrl', documents[0].get('photoUrl'));
      }
      // Fluttertoast.showToast(
      //   msg: 'Welcome to Movida World',
      //   backgroundColor: Color(0xff2556D9),
      //   textColor: Colors.white,
      //   toastLength: Toast.LENGTH_LONG,
      // );

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MovieApp(
          nickName: prefs.getString('nickName'),
          photUrl: prefs.getString('photoUrl'),
        );
      }));
    } else {
      // Fluttertoast.showToast(msg: 'Sign In Failed');
      Navigator.pop(context);
    }
  }

  void _login() async {
    final TwitterLoginResult result = await twitterLogin.authorize();
    String newMessage;
    if (result.status == TwitterLoginStatus.loggedIn) {
      _signInWithTwitter(result.session.token, result.session.secret);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return MovieApp();
      //     },
      //   ),
      // );

      print('signed In');
    } else if (result.status == TwitterLoginStatus.cancelledByUser) {
      newMessage = 'Login cancelled by user.';
    } else {
      newMessage = result.errorMessage;
    }
    //  setState(() {
    //   message = newMessage;
    // });
  }

  void _logout() async {
    await twitterLogin.logOut();
    await _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    _login();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
