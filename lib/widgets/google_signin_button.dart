import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_luntian_app/authentication/authentication.dart';
import 'package:flutter_luntian_app/screens/bottom_bar.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: _isSigningIn
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              )
            : GestureDetector(
                onTap: () async {
                  setState(() {
                    _isSigningIn = true;
                  });
                  User user =
                      await Authentication.signInWithGoogle(context: context);

                  setState(() {
                    _isSigningIn = false;
                  });

                  if (user != null) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => BottomBarScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 44.0,
                  width: 44.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/google.jpg',
                      ),
                    ),
                  ),
                ),
              ));
  }
}
