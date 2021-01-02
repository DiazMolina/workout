import 'package:flutter/material.dart';
import 'package:workout/constants.dart';
import 'package:workout/widgets/card_widget.dart';
import 'package:workout/widgets/custom_icon.dart';

class TrainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: height * 0.55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/train.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: height * 0.55,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [kThirdColor, Colors.transparent]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 5),
                      child: Column(children: [
                        Row(children: [
                          RichText(
                            text: TextSpan(
                                text: 'Hey, ',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: kFirtsColor,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: 'Fahd',
                                      style: TextStyle(color: Colors.white))
                                ]),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: kFirtsColor, width: 3),
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height: 120),
                        Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: kFirtsColor.withOpacity(0.2)),
                            child: Center(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: kFirtsColor),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: 'Find ',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: kFirtsColor,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: 'your Workout',
                                        style: TextStyle(color: Colors.white))
                                  ]),
                            ),
                            Spacer(),
                            Image.asset('assets/images/location.png')
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          height: 50,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            color: kSecondColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            enabled: false,
                            decoration: InputDecoration(
                                hintText: 'SEARCH WORKOUT',
                                suffixIcon:
                                    Icon(Icons.search, color: Colors.white),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ]),
                    ),
                  )
                ]),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: kFirtsColor)),
                      child: Center(
                        child: Text(
                          'Popular',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 80,
                      child: Center(
                        child: Text(
                          'Hard workout',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 80,
                      child: Center(
                        child: Text(
                          'Full body',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 80,
                      child: Center(
                        child: Text(
                          'Crossfit',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      SizedBox(height: 10),
                      Text('Popular workout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))
                    ]),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ExampleCard(
                              img: 'assets/images/emily.png',
                              title: 'Yoga exercises'),
                          ExampleCard(
                              img: 'assets/images/sule.png',
                              title: 'Example exercises'),
                          ExampleCard(
                              img: 'assets/images/alexander.png',
                              title: 'Example exercises'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 75,
              width: width,
              color: Color(0xff242538),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 25,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIcon(),
                      Text(
                        'Workout',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Level',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
