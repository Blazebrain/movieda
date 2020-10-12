import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:movieda/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../authentication/googleauth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoading = false;
  SharedPreferences prefs;
  bool isLoggedIn;
  GoogleSignIn googleSignIn = GoogleSignIn();
  void isSignedIn() async {
    this.setState(() {
      isLoading = true;
    });
    prefs = await SharedPreferences.getInstance();

    // The next line checks to see if the user is signed in by returning a bool true/false
    isLoggedIn = await googleSignIn.isSignedIn();
    print(isLoggedIn);
    // if logged in, it pushes the user to the homescreen
    if (isLoggedIn == true) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MovieApp(
          nickName: prefs.getString('nickName'),
          photUrl: prefs.getString('photoUrl'),
        );
      }));
    }
    this.setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return GoogleLoginHandler();
                })),
                child: Text('Continue with Google'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
