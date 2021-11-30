import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_luntian_app/screens/register_page.dart';
import 'package:flutter_luntian_app/widgets/google_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildSocialBtn(Function onTap, AssetImage logo) {
      return GestureDetector(
        onTap: onTap,
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
              image: logo,
            ),
          ),
        ),
      );
    }

    Widget _buildSocialBtnRow() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildSocialBtn(
              () => print('Login with Facebook'),
              AssetImage(
                'assets/images/facebook.jpg',
              ),
            ),
            GoogleSignInButton()
          ],
        ),
      );
    }

    Widget _buildSignupBtn() {
      return GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an Account? ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '   Sign Up',
                style: TextStyle(
                  color: Color(0xff41a58d),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/luntian.png",
                scale: 1.5,
              ),
              SizedBox(height: 8),
              Text('Luntian',
                  style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(
                          fontSize: 44,
                          color: Color(0xff41a58d),
                          fontWeight: FontWeight.w500))),
              TextFormField(
                  decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
              )),
              TextFormField(
                  decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              )),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomBarScreen()),
                      );
                    },
                    child: Text("LOGIN",
                        style: GoogleFonts.comfortaa(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xff41a58d),
                    )),
              ),
              SizedBox(height: 8),
              Row(children: [
                Expanded(
                  child: Divider(
                    height: 2,
                    thickness: 2,
                    //color: Colors.black,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: Divider(
                    height: 2,
                    thickness: 2,
                    // color: Colors.black,
                  ),
                ),
              ]),
              Text(
                'Sign in with',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              _buildSocialBtnRow(),
              _buildSignupBtn()
            ],
          ),
        ),
      ),
    );
  }
}
