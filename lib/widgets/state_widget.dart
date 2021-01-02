import 'package:flutter/material.dart';
import 'package:workout/constants.dart';

class StateWidget extends StatelessWidget {
  final String state, detail;
  final bool enable;
  const StateWidget({
    Key key,
    this.state,
    this.detail,
    this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            color: kSecondColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(offset: Offset(3, 3), blurRadius: 8, spreadRadius: -8)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 30),
            Text(
              state,
              style: TextStyle(
                  color: kFirtsColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              detail,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ]),
        ),
      ),
      Positioned(
        top: 15,
        right: 20,
        child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff3735850),
            ),
            child: enable
                ? Center(child: Icon(Icons.done, color: kFirtsColor))
                : SizedBox()),
      )
    ]);
  }
}
