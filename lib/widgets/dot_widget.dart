import 'package:flutter/material.dart';
import 'package:workout/constants.dart';

class DotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(shape: BoxShape.circle, color: kFirtsColor),
    );
  }
}
