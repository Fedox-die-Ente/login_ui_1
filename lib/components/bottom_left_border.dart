import 'package:flutter/material.dart';

import '../styles/colors.dart';

class BottomLeftBorder extends StatelessWidget {
  const BottomLeftBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.translate(
            offset: Offset(-200, 100),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: backgroundColor2, width: 2),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.translate(
            offset: Offset(-120, 0),
            child: Container(
              width: 300,
              height: 300,
              transform: Matrix4.rotationZ(0.7),
              decoration: BoxDecoration(
                border: Border.all(color: backgroundColor2, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
