import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'personal/personal_information.dart';
import 'phoneverify/phone_verify_screen.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

import 'security/security_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: pageBackGroundC,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            color: pageBackGroundC,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: Get.height / 1.33,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: Get.height / 13.71,
                  left: Get.width / 17.14,
                  right: Get.width / 17.14,
                ),
                child: Column(
                  children: [
                    Text(
                      "Mattie Hardwick",
                      style: TextStyle(
                        fontSize: 19,
                        color: black2,
                        fontFamily: "NunitoSemiBold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 37.14,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(PersonalInformation());
                      },
                      child: design1Profile(
                        labelText: "Personal information",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(PhoneVerifyScreen());
                      },
                      child: design1Profile(
                        labelText: "Phone number verification",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height / 38.75),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 18,
                            color: black2,
                            fontFamily: "NunitoBold",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 127.34,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SecurityScreen());
                      },
                      child: design1Profile(
                        labelText: "Security",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: design1Profile(
                        labelText: "Help & Support",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: design1Profile(
                        labelText: "Legaly",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: Get.height > 750 ? Get.height / 29.71 : 10,
            left: Get.width / 2.63,
            child: Stack(
              children: [
                Container(
                  height: Get.height / 11.14,
                  width: Get.width / 5.14,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff40000000),
                        spreadRadius: 0.5,
                        blurRadius: 3,
                        offset: Offset(0, 6),
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage(profilePic),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  // bottom: ,
                  child: Container(
                    height: Get.height / 35.65,
                    width: Get.width / 16.45,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

design1Profile({String labelText}) {
  return Container(
    height: 54,
    width: Get.width,
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical:Get.height/59.42),
    decoration: BoxDecoration(
      color: pageBackGroundC,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 19,
            color: black2,
            fontFamily: "NunitoSemiBold",
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.arrow_forward,
          color: gray4,
          size: 30,
        ),
      ],
    ),
  );
}
