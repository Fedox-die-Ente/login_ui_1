import 'package:flutter/material.dart';

import '../styles/colors.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: backgroundColor4,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
