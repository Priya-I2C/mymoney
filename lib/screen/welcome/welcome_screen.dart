import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/screen/auth/signup/signup_screen.dart';
import '../auth/login/login_screen.dart';
import 'package:mymoney/utils/buttons_widget.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';
import 'package:mymoney/utils/media_height_width.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackGroundC,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: Get.height / 3.87),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(appLogo),
              Text(
                "Welcome to",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  fontFamily: "NunitoSemiBold",
                ),
              ),
              Text(
                "My Money",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  fontFamily: "NunitoBold",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height / 4.81),
                child: loginButton(
                    textLabel: "Login",
                    onTapButton: () {
                      Get.to(
                        LogInScreen(),
                      );
                    }),
              ),
              SizedBox(
                height: Get.height / 49.52,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Nunito",
                      color: black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignUpScreen());
                    },
                    child: Text(
                      " Sign up",
                      style: TextStyle(
                        fontSize: 14,
                        color: appColor,
                        fontFamily: "NunitoSemiBold",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
