import 'package:fl_chart/fl_chart.dart';
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

import '../notification_screen.dart';

class WatchListScreen extends StatelessWidget {
  final MyTabController myTabController = Get.put(MyTabController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          Container(
            height: Get.height / 2.80,
            child: TabBarView(
              controller: myTabController.controller,
              children: [
                tabView1(),
                tabView1(),
                tabView1(),
                tabView1(),
                tabView1(),
              ],
            ),
          ),
          Container(
            height: 30,
            width: Get.width,
            child: TabBar(
              labelColor: appColor,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              controller: myTabController.controller,
              unselectedLabelColor: black,
              indicatorColor: appColor,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: false,
              tabs: myTabController.myTabs,
              labelStyle: TextStyle(
                fontSize: 15,
                color: black,
                fontFamily: "NunitoSemiBold",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 44.57,
          ),
          Container(
            height: Get.height * 1.2 /*(Get.height > 891) ? Get.height : 275*/,
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
                ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Divider(
                    height: 2,
                    thickness: 2,
                    color: grayF2F2F2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: Get.width / 31.64, left: Get.width / 31.64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Active Stock",
                        style: TextStyle(
                          fontSize: 18,
                          color: black0D1F3C,
                          fontFamily: "NunitoBold",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllStockScreen(),
                            ),
                          );*/
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
                ListView.builder(
                  padding: EdgeInsets.only(top: 0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: watchListPageBuildDesignMostStock.length,
                  itemBuilder: (context, index) => listViewItemDesignMostStock(
                    context: context,
                    image: watchListPageBuildDesignMostStock[index]["img"],
                    title: watchListPageBuildDesignMostStock[index]["title"],
                    subTitle: watchListPageBuildDesignMostStock[index]
                        ["subTitle"],
                    total: watchListPageBuildDesignMostStock[index]["totalRs"],
                    stock1: watchListPageBuildDesignMostStock[index]["stock1"],
                    stock2: watchListPageBuildDesignMostStock[index]["stock2"],
                    colorName: watchListPageBuildDesignMostStock[index]
                        ["color"],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: Get.width / 31.64, left: Get.width / 31.64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Visited Stocks",
                        style: TextStyle(
                          fontSize: 18,
                          color: black0D1F3C,
                          fontFamily: "NunitoBold",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllStockScreen(),
                            ),
                          );*/
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
                Container(
                  margin: EdgeInsets.only(
                    left: 6.5,
                    right: 6.5,
                    bottom: Get.height / 99.04,
                  ),
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 9,
                    bottom: 9,
                  ),
                  height: 62,
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
                      lastContainerDesign(
                        text1: "TCS",
                        mainColor: redEB5757,
                        text2: "215.15",
                        richText1: "+13.00",
                        richText2: "+0.14%",
                      ),
                      lastContainerDesign(
                        text1: "WIPRO",
                        mainColor: green219653,
                        text2: "456.40",
                        richText1: "+13.00",
                        richText2: "+0.01%",
                      ),
                      lastContainerDesign(
                        text1: "SUNPHARMA",
                        mainColor: green219653,
                        text2: "895.78",
                        richText1: "+52.00",
                        richText2: "+2.52%",
                      ),
                      lastContainerDesign(
                        text1: "CIPLA",
                        mainColor: redEB5757,
                        text2: "1454.78",
                        richText1: "+15.00",
                        richText2: "+5.52%",
                      ),
                    ],
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

final List<Color> gradientColors = [
  const Color(0xff73BE8C),
  const Color(0xff73BE8C),
];

lastContainerDesign(
    {String text1,
    Color mainColor,
    String text2,
    String richText1,
    String richText2}) {
  return Container(
    width: 82 /*tablet:80*/,
    child: Row(
      children: [
        VerticalDivider(
          color: mainColor,
          thickness: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: 9,
                color: black3B3C59,
                fontFamily: "NunitoBold",
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 12,
                color: mainColor,
                fontFamily: "NunitoSemiBold",
                fontWeight: FontWeight.w600,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: richText1,
                    style: TextStyle(
                      fontSize: 8,
                      color: black080D0A,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "(",
                    style: TextStyle(
                      fontSize: 8,
                      color: black080D0A,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: richText2,
                    style: TextStyle(
                      fontSize: 8,
                      color: mainColor,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ")",
                    style: TextStyle(
                      fontSize: 8,
                      color: black080D0A,
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
  );
}

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
        padding: const EdgeInsets.only(top: 28),
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
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage(image),
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 15,
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
              ],
            ),
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

listViewItemDesignMostStock(
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
          Container(
            child: Row(
              children: [
                SvgPicture.asset(image,width: 30,height: 30),
                SizedBox(
                  width: 15,
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
              ],
            ),
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
