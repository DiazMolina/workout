import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kThirdColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      height: height * 0.55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/login.png'),
                            fit: BoxFit.cover),
                      )),
                  Container(
                    height: height * 0.55,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [kThirdColor, Colors.transparent])),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
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
                                  Text('Sign in',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    'train and live new experience of \n exercising at home',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 18),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'test@gmail.com',
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff707070))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff707070))),
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 18),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: '********',
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff707070))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff707070))),
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(color: Colors.white),
                              ))),
                      Center(
                          child: Column(children: [
                        SizedBox(height: 20),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kFirtsColor),
                            height: 50,
                            width: width * 0.7,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kThirdColor,
                                border:
                                    Border.all(width: 2, color: kFirtsColor)),
                            height: 50,
                            width: width * 0.7,
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                      SizedBox(height: 20)
                    ]),
              )
            ],
          ),
        ));
  }
}
