import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/Screens/GeneralWidgets/MyElevatedButton.dart';
import 'package:time_tracker_app/Screens/SignInScreen/MySignInButton.dart';
import 'package:time_tracker_app/Screens/SignInScreen/MySocialElevatedButton.dart';

class SignInScreen extends StatelessWidget {

  Future<void> signInAnnon() async{
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    print("${userCredential.user.uid}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            MySocialElevatedButton(
              assetName: "images/google-logo.jpg",
              text: "Sign in with google",
              color: Colors.white,
              textColor: Colors.black54,
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            MySocialElevatedButton(
              assetName: "images/facebook-logo.jpg",
              text: "Sign in with google",
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            MySignInButton(
              text: "Sign in with google",
              color: Colors.lightGreen,
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Or",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            MySignInButton(
              text: "Sign in with announmisly",
              color: Colors.yellowAccent,
              textColor: Colors.black54,
              onPressed: signInAnnon,
            ),
          ],
        ),
      ),
    );
  }
}
