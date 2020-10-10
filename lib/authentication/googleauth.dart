import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/homepage.dart';
import '../widgets/loading.dart';

class GoogleLoginHandler extends StatefulWidget {
  @override
  _GoogleLoginHandlerState createState() => _GoogleLoginHandlerState();
}

class _GoogleLoginHandlerState extends State<GoogleLoginHandler> {
  GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  bool isLoading = true;
  bool isLoggedIn = false;
  User currentUser;
  SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    handleSignIn();
  }

  handleSignIn() async {
    prefs = await SharedPreferences.getInstance();
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    GoogleAuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );
    User firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user;

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
      Fluttertoast.showToast(
        msg: 'Welcome to Movida World',
        backgroundColor: Color(0xff2556D9),
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
      );
      setState(() {
        isLoading = false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MovieApp(
          nickName: prefs.getString('nickName'),
        );
      }));
    } else {
      Fluttertoast.showToast(msg: 'Sign In Failed');
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Loading() : Container();
  }
}
