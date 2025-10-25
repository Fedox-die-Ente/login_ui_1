import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/colors.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.hintText, required this.textInputType});

  final String hintText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textColor3,
      ),
      obscureText: textInputType == TextInputType.visiblePassword
          ? true
          : false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        fillColor: backgroundColor2,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: primaryColor, width: 3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
    );
  }
}
