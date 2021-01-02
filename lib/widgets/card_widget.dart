import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final String img, title;
  const ExampleCard({
    Key key,
    this.img,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: 130,
              height: 150,
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }
}
