import 'package:flutter/material.dart';

import '../styles/colors.dart';

class UpperRightCircles extends StatelessWidget {
  const UpperRightCircles({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            transform: Matrix4.translationValues(140, -size.height / 6.9, 0),
            width: size.width,
            height: size.height / 2,
            decoration: BoxDecoration(
              color: backgroundColor3,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            transform: Matrix4.translationValues(70, -size.height / 6, 0),
            width: size.width * 2,
            height: size.height / 1.5,
            decoration: BoxDecoration(
              border: Border.all(color: backgroundColor3, width: 3),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
