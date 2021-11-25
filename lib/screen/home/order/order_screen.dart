import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/tabcontroller_screen.dart';
import 'package:mymoney/utils/color.dart';

class OrderScreen extends StatelessWidget {
  MyTabController myTabController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackGroundC,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BottomAppBar(
              color: pageBackGroundC,
              elevation: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TabBar(
                      // automaticIndicatorColorAdjustment: false,
                      // labelPadding: EdgeInsets.all(15),
                      // onTap: _onItemTapped,
                      labelColor: appColor,
                      controller: myTabController.controller1,
                      unselectedLabelColor: black,
                      indicatorColor: appColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 2,
                      isScrollable: true,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: appColor, width: 2),
                        // insets: EdgeInsets.only(bottom: 52),
                      ),
                      tabs: myTabController.myTabs2,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: black2,
                        fontFamily: "NunitoSemiBold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 679,
            color: white,
            child: TabBarView(
              controller: myTabController.controller1,
              children: [
                Text("vjsdv"),
                Text("vjsdv"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
