import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/utils/buttons_widget.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

class FundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            color: pageBackGroundC,
            child: Column(
              children: [
                Text(
                  "Funds",
                  style: TextStyle(
                    fontSize: 26,
                    color: black2,
                    fontFamily: "NunitoBold",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "( Cash + Collateral )",
                  style: TextStyle(
                    fontSize: 15,
                    color: black485068,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: 670,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.56),
                  topRight: Radius.circular(22.56),
                ),
                /*   image: DecorationImage(
                  image: AssetImage(bg1),
                  fit: BoxFit.cover,
                ),*/
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Column(
                  children: [
                    Text(
                      "Available margin",
                      style: TextStyle(
                        fontSize: 17,
                        color: gray,
                        fontFamily: "NunitoSemiBold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "₹2,265.35",
                      style: TextStyle(
                        fontSize: 21,
                        color: appColor,
                        fontFamily: "NunitoSemiBold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 9.15,
                        left: 16,
                        right: 10,
                      ),
                      child: Divider(
                        color: gray,
                        thickness: 1,
                      ),
                    ),
                    design1(text1: "Opening balance", text2: "2,4389"),
                    design1(text1: "Payin", text2: "0.00"),
                    design1(text1: "Span", text2: "0,0015 BTC"),
                    design1(text1: "Delivery Margin", text2: "0.00"),
                    design1(text1: "Option Primum", text2: "0.00"),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10.28, left: 16, top: 10),
                      child: Divider(
                        color: gray,
                        thickness: 1,
                      ),
                    ),
                    design1(text1: "Total Collateral", text2: "0.00"),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 33, right: 26),
                      child: Row(
                        children: [
                          addFundButton(
                              onTapButton: () {}, textLabel: "Add Funds"),
                          SizedBox(
                            width: 10,
                          ),
                          withFundButton(
                              onTapButton: () {}, textLabel: "Withdraw"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

design1({String text1, String text2}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 23.93,
      right: 18.18,
      top: 10,
    ),
    child: Container(
      height: 59.78,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 16,
              color: black2.withOpacity(0.6),
              fontFamily: "NunitoSemiBold",
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 18,
              color: black2,
              fontFamily: "NunitoSemiBold",
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );
}
