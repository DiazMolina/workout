import 'package:flutter/material.dart';
import 'package:workout/widgets/dot_widget.dart';

class CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          DotWidget(),
          SizedBox(width: 5),
          DotWidget(),
        ]),
        SizedBox(height: 5),
        Row(children: [
          DotWidget(),
          SizedBox(width: 5),
          DotWidget(),
        ])
      ],
    );
  }
}
