import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/constants.dart';
import 'package:workout/screens/about_screen.dart';
import 'package:workout/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/welcome.png'))),
          ),
          Container(
            width: width,
            height: height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'HARD\t',
                        style: GoogleFonts.bebasNeue(
                            fontSize: 30, letterSpacing: 5),
                        children: [
                          TextSpan(
                              text: 'ELEMENT',
                              style: TextStyle(color: kFirtsColor))
                        ]),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('WELCOME',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                              'train and live the new experience of \nexcercising at home',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          SizedBox(height: 80),
                          FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutScreen())),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: kFirtsColor),
                                height: 50,
                                width: width,
                                child: Center(
                                  child: Text('Try now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                          SizedBox(height: 10),
                          FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen())),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        width: 2, color: Colors.white)),
                                height: 50,
                                width: width,
                                child: Center(
                                  child: Text('Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                          SizedBox(height: 20),
                          FlatButton(
                              onPressed: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                    child: Text(
                                  'Change Language',
                                  style: TextStyle(
                                      color: kFirtsColor, fontSize: 14),
                                )),
                              ))
                        ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
