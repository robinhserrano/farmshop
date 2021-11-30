// import 'package:ECommerceApp/consts/colors.dart';
// import 'package:ECommerceApp/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class CartEmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 80),
          //   width: double.infinity,
          //   height: MediaQuery.of(context).size.height * 0.4,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.fill,
          //       image: AssetImage('assets/images/emptycart.png'),
          //     ),
          //   ),
          // ),

          Text(
            'Your Cart Is Empty',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 36,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Looks Like You didn\'t \n add anything to your cart yet',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 26,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 30,
          ),
          //   Container(
          // width: MediaQuery.of(context).size.width * 0.9,
          //     // height: MediaQuery.of(context).size.height * 0.06,
          //     child: RaisedButton(
          //       onPressed: () {},
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(16),
          //         side: BorderSide(color: Color(0xff40aa54)),
          //       ),
          //       color: Color(0xff40aa54),
          //       child: Text(
          //         'shop now'.toUpperCase(),
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //             color: Theme.of(context).textSelectionColor,
          //             fontSize: 26,
          //             fontWeight: FontWeight.w600),
          //       ),
          //     ),
          //   ),

          Container(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("START SHOPPING",
                    style: GoogleFonts.comfortaa(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xff41a58d),
                )),
          ),
        ],
      ),
    );
  }
}
