import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout/constants.dart';
import 'package:workout/screens/detail_train_screen.dart';
import 'package:workout/widgets/state_widget.dart';

class AboutScreen extends StatelessWidget {
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
                    image: AssetImage('assets/images/about.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: height,
            width: width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                            style: TextStyle(color: kFirtsColor),
                          )
                        ]),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About You',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'we want know more about you, follow the next \nsteps to complete the information',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(children: [
                    StateWidget(
                      state: 'I am \ninactive',
                      detail: 'I am \ninactive',
                      enable: true,
                    ),
                    SizedBox(width: 20),
                    StateWidget(
                      state: 'I am \nBeginner',
                      detail: 'I have trained few time',
                      enable: false,
                    ),
                  ]),
                  SizedBox(height: 30),
                  Row(children: [
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text('Skip Intro',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ),
                      ),
                    ),
                    Spacer(),
                    FlatButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsTrainScreen())),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            color: kFirtsColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ))
                  ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
