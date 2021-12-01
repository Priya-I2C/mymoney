import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/screen/home/account/personal_information.dart';
import 'package:mymoney/screen/home/account/phone_verify_screen.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

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
              height: 670,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 65,
                  left: 24,
                  right: 24,
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
                      height: 24,
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
                      padding: const EdgeInsets.only(top: 23),
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
                      height: 7,
                    ),
                    InkWell(
                      onTap: () {},
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
            top: 30,
            left: 156,
            child: Stack(
              children: [
                Container(
                  height: 80,
                  width: 80,
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
                    height: 25,
                    width: 25,
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
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
