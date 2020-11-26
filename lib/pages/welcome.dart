import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:movieda/authentication/twitterauth.dart';
import 'package:movieda/pages/homepage.dart';
import 'package:movieda/widgets/welcome_page_painter.dart';
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
      backgroundColor: Color(0xff45376A),
      body: CustomPaint(
        size: Size.infinite,
        painter: WelcomePagePainter(),
        child: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 5,
                      ),
                      Text(
                        'Blazebrain Enterprises',
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Register',
                        style: GoogleFonts.sanchez(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Become a member of movieda world',
                        style: GoogleFonts.quicksand(
                          fontSize: 14,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      LoginOptionsButton(
                        onTapped: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return GoogleLoginHandler();
                          },
                        )),
                        imageLocation: 'images/glogo.png',
                        loginOption: 'Continue with Google',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LoginOptionsButton(
                        onTapped: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return
                                // GoogleLoginHandler();
                                TwitterLoginHandler();
                          },
                        )),
                        imageLocation: 'images/glogo.png',
                        loginOption: 'Continue with Twitter',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LoginOptionsButton(
                        onTapped: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return GoogleLoginHandler();
                          },
                        )),
                        imageLocation: 'images/glogo.png',
                        loginOption: 'Continue with Facebook',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 140,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'or',
                            style: GoogleFonts.quicksand(
                              fontSize: 15,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LoginOptionsButton(
                        onTapped: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return GoogleLoginHandler();
                          },
                        )),
                        loginOption: 'Signup with Email',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginOptionsButton extends StatelessWidget {
  final Function onTapped;
  final String imageLocation;
  final loginOption;
  const LoginOptionsButton({
    Key key,
    this.onTapped,
    this.imageLocation,
    this.loginOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.white,
            ),
            color: Color(0xff45376A),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageLocation != null
                  ? Image.asset(
                      imageLocation,
                      height: 35,
                    )
                  : SizedBox(
                      width: 35,
                    ),
              SizedBox(
                width: 60,
              ),
              Center(
                child: Text(
                  loginOption,
                  style: GoogleFonts.quicksand(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )

          //  ListTile(

          //   // contentPadding: EdgeInsets.zero,
          //   leading: imageLocation != null
          //       ? Image(
          //           image: AssetImage(imageLocation),
          //           height: 35,
          //         )
          //       : SizedBox(
          //           width: 35,
          //         ),
          //   title: Text(
          //     loginOption,
          //     style: GoogleFonts.quicksand(
          //       fontSize: 16,
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
