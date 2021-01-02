import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:workout/constants.dart';
import 'package:workout/screens/train_screen.dart';

class DetailsTrainScreen extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/detail.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: height * 0.55,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [kThirdColor, Colors.transparent]),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                color: kFirtsColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time,
                                        color: Colors.white, size: 20),
                                    Spacer(),
                                    Text(
                                      '3 Hours',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: Icon(Icons.close, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.grey),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: '16 ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: kFirtsColor,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: 'Moves',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ))
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: '12 ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: kFirtsColor,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: 'Sets',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ))
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: '30 ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: kFirtsColor,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: 'Min',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ))
                                      ]),
                                )
                              ]),
                        ),
                      ]),
                    ),
                  ),
                ]),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Advance workout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white)),
                        SizedBox(height: 5),
                        RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 15,
                            unratedColor: Color(0xff707070),
                            itemPadding: EdgeInsets.symmetric(horizontal: 5),
                            itemBuilder: (context, index) =>
                                Icon(Icons.star, color: Colors.amber),
                            onRatingUpdate: (rating) {
                              print(rating);
                            }),
                        SizedBox(height: 25),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Description',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                'Feddback',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff707070)),
                              ),
                              Text(
                                'related',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff707070)),
                              )
                            ]),
                        SizedBox(height: 20),
                        Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Center(
                          child: Column(children: [
                            SizedBox(height: 20),
                            FlatButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kFirtsColor,
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Begin Train for \$5.00',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                )),
                            SizedBox(height: 20),
                            FlatButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TrainScreen())),
                                child: Container(
                                  height: 50,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kThirdColor,
                                    border: Border.all(
                                        width: 2, color: kFirtsColor),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Begin Train Demo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                )),
                          ]),
                        ),
                        SizedBox(height: 20)
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
