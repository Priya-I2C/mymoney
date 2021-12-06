import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/tabcontroller_screen.dart';
import 'package:mymoney/screen/home/watchlist/all_stocks_screen.dart';
import 'package:mymoney/screen/home/watchlist/buy_sell_screen.dart';
import 'package:mymoney/screen/home/watchlist/home_screen.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/data.dart';
import 'package:mymoney/utils/imagenames.dart';
import 'package:mymoney/utils/utils_text.dart';

import '../notification_screen.dart';

class WatchListScreen extends StatelessWidget {
  final MyTabController myTabController = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBarDesign(),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(
                right: Get.width / 20.57, top: Get.height / 178.28),
            child: InkWell(
              onTap: () {
                Get.to(NotificationScreen());
              },
              child: SvgPicture.asset(
                bellhome,
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: myTabController.controller,
            children: [
              tabView1(),
              Text(Get.height.toString()),
              Text("cj"),
              Text("cj"),
              Text("cj"),
            ],
          ),
        ),
        Container(
          height: Get.height / 13.42,
          width: Get.width,
          child: BottomAppBar(
            // notchMargin: 0,
            notchMargin: 5.0,
            color: pageBackGroundC,
            elevation: 0,
            child: TabBar(
              // labelPadding: EdgeInsets.all(0),
              // onTap: _onItemTapped,
              labelColor: appColor,
              controller: myTabController.controller,
              unselectedLabelColor: black,
              indicatorColor: appColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              isScrollable: false,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: appColor, width: 2),
                // insets: EdgeInsets.only(bottom: 52),
              ),
              tabs: myTabController.myTabs,
              labelStyle: TextStyle(
                fontSize: 15,
                color: black,
                fontFamily: "NunitoSemiBold",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Get.height / 44.57,
        ),
        Container(
          height: (Get.height > 891) ? 375: 275,
          width: Get.width,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: Get.width / 31.64,
                    top: Get.height / 89.14,
                    left: Get.width / 31.64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stocks",
                      style: TextStyle(
                        fontSize: 18,
                        color: black0D1F3C,
                        fontFamily: "NunitoBold",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllStockScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 15,
                          color: appColor,
                          fontFamily: "NunitoSemiBold",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    shrinkWrap: true,
                    itemCount: watchListPageBuildDesign.length,
                    itemBuilder: (context, index) => listViewItemDesign(
                      context: context,
                      image: watchListPageBuildDesign[index]["img"],
                      title: watchListPageBuildDesign[index]["title"],
                      subTitle: watchListPageBuildDesign[index]["subTitle"],
                      total: watchListPageBuildDesign[index]["totalRs"],
                      stock1: watchListPageBuildDesign[index]["stock1"],
                      stock2: watchListPageBuildDesign[index]["stock2"],
                      colorName: watchListPageBuildDesign[index]["color"],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final List<Color> gradientColors = [
  const Color(0xff73BE8C),
  const Color(0xff73BE8C),
];

tabView1() {
  return Column(
    children: [
      Text(
        "NIFTY 50",
        style: TextStyle(
          fontSize: 28,
          color: black,
          fontFamily: "NunitoSemiBold",
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        "24,825.90",
        style: TextStyle(
          fontSize: 28,
          color: green219653,
          fontFamily: "NunitoBold",
          fontWeight: FontWeight.w400,
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "+13.00",
              style: TextStyle(
                fontSize: 15,
                color: black,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "(",
              style: TextStyle(
                fontSize: 15,
                color: black,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "+0.14%",
              style: TextStyle(
                fontSize: 15,
                color: green219653,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ")",
              style: TextStyle(
                fontSize: 15,
                color: black,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SizedBox(
          height: Get.height / 5.57,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 6,
              titlesData: FlTitlesData(show: false),

              // showingTooltipIndicators: true,
              // titlesData: LineTitles.getTitleData(),
              gridData: FlGridData(
                show: false,
                // getDrawingHorizontalLine: (value) {
                //   return FlLine(
                //     color: transPrent,
                //     strokeWidth: 1,
                //   );
                // },
                drawVerticalLine: false,
                // getDrawingVerticalLine: (value) {
                //   return FlLine(
                //     color: transPrent,
                //     strokeWidth: 1,
                //   );
                // },
              ),
              borderData: FlBorderData(
                show: false,
                // border: Border.all(color: transPrent, width: 1),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 2.5),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  colors: gradientColors,
                  barWidth: 2,
                  dotData: FlDotData(show: false),

                  // belowBarData: BarAreaData(
                  //     // show: true,
                  //     // colors: gradientColors
                  //     //     .map((color) => color.withOpacity(0.3))
                  //     //     .toList(),
                  //     ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

listViewItemDesign(
    {String image,
    String title,
    String subTitle,
    String total,
    String stock1,
    String stock2,
    BuildContext context,
    colorName}) {
  return InkWell(
    onTap: () {
      Get.to(BuySellScreen());
    },
    child: Container(
      margin: EdgeInsets.only(
        left: Get.width / 34.28,
        right: Get.width / 34.28,
        bottom: Get.height / 99.04,
      ),
      padding: EdgeInsets.only(
        left: Get.width / 68.57,
        right: Get.width / 37.40,
        top: Get.height / 127.34,
        bottom: Get.height / 99.04,
      ),
      height: 60,
      width: Get.width,
      decoration: BoxDecoration(
        color: pageBackGroundC,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xff26000000).withOpacity(0.1),
            spreadRadius: 0.1,
            blurRadius: 3,
            offset: Offset(0.5, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: black,
                  fontFamily: "NunitoSemiBold",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 13,
                  color: gray4,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Container(
            width: 84,
            height: 29,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                titlesData: FlTitlesData(show: false),
                gridData: FlGridData(
                  show: false,
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(2.6, 2),
                      FlSpot(4.9, 5),
                      FlSpot(6.8, 2.5),
                      FlSpot(8, 6),
                      FlSpot(9.5, 7),
                      FlSpot(11, 7),
                    ],
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 2,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      colors: [
                        const Color(0xff73BE8C).withOpacity(0.4),
                        const Color(0xf73BE8C),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                total,
                style: TextStyle(
                  fontSize: 15,
                  color: colorName,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: stock1,
                      style: TextStyle(
                        fontSize: 15,
                        color: black,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "(",
                      style: TextStyle(
                        fontSize: 15,
                        color: black,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: stock2,
                      style: TextStyle(
                        fontSize: 15,
                        color: colorName,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ")",
                      style: TextStyle(
                        fontSize: 15,
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
  );
}
