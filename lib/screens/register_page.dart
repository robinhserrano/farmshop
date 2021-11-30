import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_luntian_app/screens/login_page.dart';
import 'package:flutter_luntian_app/widgets/google_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Have an Account? ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '    Sign In',
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
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
            color: Colors.grey,
            icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: 48),
              Text('Create an Account',
                  style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Color(0xff41a58d),
                          fontWeight: FontWeight.w500))),
              SizedBox(height: 32),
              TextFormField(
                  decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Name',
              )),
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
                    child: Text("CREATE ACCOUNT",
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
                'Sign up with',
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
