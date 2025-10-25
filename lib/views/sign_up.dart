import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_1/components/input.dart';
import 'package:login_ui_1/components/login_icon.dart';
import 'package:login_ui_1/views/sign_in.dart';

import '../components/bottom_left_border.dart';
import '../components/upper_right_circles.dart';
import '../styles/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          BottomLeftBorder(),
          UpperRightCircles(),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create Account",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Text(
                      "Create an account so you can explore all the existing jobs",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Input(
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Input(
                      hintText: 'Password',
                      textInputType: TextInputType.visiblePassword,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Input(
                      hintText: 'Confirm Password',
                      textInputType: TextInputType.visiblePassword,
                    ),
                  ),
                  SizedBox(height: 35),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: MediaQuery.of(context).size.width / 2.9,
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
                            "Sign Up",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },
                        child: Text(
                          "Already have an account?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: textColor2,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Or continue with",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LoginIcon(icon: Icons.facebook),
                          SizedBox(width: 10),
                          LoginIcon(icon: Icons.apple),
                          SizedBox(width: 10),
                          LoginIcon(icon: Icons.g_translate_outlined),
                        ],
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
