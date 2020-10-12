import 'package:flutter/material.dart';
import '../authentication/googleauth.dart';

class WelcomeScreen extends StatelessWidget {
// void  isSignedIn() async{
//     GoogleSignIn signIn = GoogleSignIn();
//     if(await signIn.isSignedIn() == true){
//         Navigator.push(context, MaterialPageRoute(builder: (context){
//           return MovieApp(nickName: "back",);
//         }))
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GoogleLoginHandler();
              })),
              child: Text('Continue with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
