import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/screen/auth/login/login_screen.dart';
import 'package:mymoney/utils/buttons_widget.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';
import 'package:mymoney/utils/textformfild.dart';

import 'creatpin_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackGroundC,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: pageBackGroundC,
        title: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Create Account",
            style: TextStyle(
              fontSize: 26,
              color: black2,
              fontFamily: "NunitoBold",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: black1,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: pageBackGroundC,
            height: Get.height,
            width: Get.width,
          ),
          Positioned(
            top: 240,
            bottom: 0.0,
            child: Container(
              height: 560,
              width: Get.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      textFromFieldDesign1(
                        hint: "First Name",
                        iconWidget: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            user,
                            color: gray9B9797,
                          ),
                        ),
                        iconWidget1: Icon(
                          Icons.visibility_outlined,
                          color: gray9B9797,
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      textFromFieldDesign1(
                        hint: "Last Name",
                        iconWidget: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            user,
                            color: gray9B9797,
                          ),
                        ),
                        iconWidget1: Icon(
                          Icons.visibility_outlined,
                          color: gray9B9797,
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      textFromFieldDesign1(
                        hint: "Email",
                        iconWidget: Icon(
                          Icons.email_outlined,
                          color: gray9B9797,
                          size: 27,
                        ),
                        iconWidget1: Icon(
                          Icons.visibility_outlined,
                          color: gray9B9797,
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      textFromFieldDesign1(
                        hint: "Password",
                        iconWidget: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            lockIcon,
                            color: gray9B9797,
                          ),
                        ),
                        iconWidget1: Icon(
                          Icons.visibility_outlined,
                          color: gray9B9797,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      signUpButton(
                        textLabel: "Sign Up",
                        onTapButton: () {
                          Get.to(
                            CreatePinScreen(),
                          );
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Nunito",
                              color: black485068,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.off(
                                LogInScreen(),
                              );
                              print("Sign Up");
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 15,
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
            ),
          ),
        ],
      ),
    );
  }
}
