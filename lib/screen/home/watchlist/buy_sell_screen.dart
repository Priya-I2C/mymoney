import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/conteiner_color_change_keypade.dart';
import 'package:mymoney/controller/tabcontroller_screen.dart';
import 'package:mymoney/screen/home/watchlist/toggle_design_screen.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

class BuySellScreen extends StatelessWidget {
  ColorChangeController colorChangeController = Get.put(
    ColorChangeController(),
  );
  final MyTabController myTabController = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: pageBackGroundC,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: black1,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            "AXISBANK",
            style: TextStyle(
              fontSize: 20,
              color: black2,
              fontFamily: "NunitoBold",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21, left: 13, right: 18),
            child: Container(
              width: Get.width,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹2126.20",
                        style: TextStyle(
                          fontSize: 18,
                          color: green219653,
                          fontFamily: "NunitoBold",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ToggleScreen(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "+30.00",
                        style: TextStyle(
                          fontSize: 18,
                          color: black,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "(",
                              style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "+0.72%",
                              style: TextStyle(
                                fontSize: 18,
                                color: green219653,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ")",
                              style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Divider(
            thickness: 3,
            color: grayF2F2F2,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: Text(
              "Chart",
              style: TextStyle(
                fontSize: 18,
                color: black,
                fontFamily: "NunitoBold",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomAppBar(
                  elevation: 0,
                  child: TabBar(
                    // labelPadding: EdgeInsets.all(15),
                    // onTap: _onItemTapped,
                    labelColor: appColor,
                    controller: myTabController.controller5,
                    unselectedLabelColor: black,
                    indicatorColor: appColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 2,
                    isScrollable: true,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: transPrent, width: 2),
                      // insets: EdgeInsets.only(bottom: 52),
                    ),
                    tabs: myTabController.myTabs5,
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: black,
                      fontFamily: "NunitoSemiBold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SvgPicture.asset(graph1),
                SvgPicture.asset(graph2),
                SvgPicture.asset(graph3),
              ],
            ),
          ),
          Container(
            height: 300,
            child: TabBarView(
              controller: myTabController.controller5,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: Get.width,
                  height: 300,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 8,
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: SideTitles(showTitles: false),
                        topTitles: SideTitles(showTitles: false),
                        bottomTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 22,
                          interval: 1,
                          getTextStyles: (context, value) => const TextStyle(
                              color: gray7C828A,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Nunito",
                              fontSize: 12),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 1:
                                return '·11am';
                              case 2:
                                return '.12am';
                              case 3:
                                return '·1pm';
                              case 4:
                                return '·2pm';
                              case 5:
                                return '·3pm';
                              case 6:
                                return '.03.45.09';
                            }
                            return '';
                          },
                          margin: 0,
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTextStyles: (context, value) => const TextStyle(
                              color: gray7C828A,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Nunito",
                              fontSize: 12),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 1:
                                return '0';
                              case 2:
                                return '150';
                              case 3:
                                return '250';
                              case 4:
                                return '350';
                              case 5:
                                return '500';
                              case 6:
                                return '650';
                              case 7:
                                return '750';
                            }
                            return '';
                          },
                          reservedSize: 32,
                          margin: 12,
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: Color(0xffD6D9DC),
                            strokeWidth: 1,
                          );
                        },
                        drawVerticalLine: false,
                        /* getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: Color(0xffD6D9DC),
                            strokeWidth: 1,
                          );
                        },*/
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          dotData: FlDotData(show: false),
                          spots: [
                            FlSpot(0, 5),
                            FlSpot(1, 4),
                            FlSpot(2.5, 6),
                            FlSpot(3.5, 5),
                            FlSpot(4.5, 2),
                            FlSpot(6.5, 4.5),
                            FlSpot(7, 2.5),
                          ],
                          isCurved: true,
                          barWidth: 1,
                          colors: [
                            appColor,
                          ],
                        ),
                        LineChartBarData(
                          dotData: FlDotData(show: false),
                          spots: [
                            FlSpot(0, 4),
                            FlSpot(1, 4.9),
                            FlSpot(2.5, 2),
                            FlSpot(3.5, 3),
                            FlSpot(4.5, 3.4),
                            FlSpot(6.5, 3.5),
                            FlSpot(7, 3.9),
                          ],
                          isCurved: true,
                          barWidth: 1,
                          colors: [
                            redEB5757,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text("c sdnc"),
                Text("c sdnc"),
                Text("c sdnc"),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: grayF2F2F2,
          ),
        ],
      ),
    );
  }
}

final List<FlSpot> dummyData1 = List.generate(8, (index) {
  return FlSpot(index.toDouble(), index * Random().nextDouble());
});

final List<FlSpot> dummyData2 = List.generate(8, (index) {
  return FlSpot(index.toDouble(), index * Random().nextDouble());
});
