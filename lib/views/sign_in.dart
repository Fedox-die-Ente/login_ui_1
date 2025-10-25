import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_1/components/input.dart';

import '../components/bottom_left_border.dart';
import '../components/upper_right_circles.dart';
import '../styles/colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            BottomLeftBorder(),
            UpperRightCircles(),
            Align(
              alignment: Alignment.topCenter,
              child: Transform.translate(
                offset: Offset(0, 130),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login here",
                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: size.width / 1.5,
                      child: Text(
                        "Welcome back you’ve been missed!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),

                    SizedBox(
                      width: size.width / 1.2,
                      child: Input(
                        hintText: 'Email',
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: size.width / 1.2,
                      child: Input(
                        hintText: 'Password',
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: size.width / 10),
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: size.width / 2.9,
                            ),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: primaryShadow,
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Create new account",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: textColor2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
