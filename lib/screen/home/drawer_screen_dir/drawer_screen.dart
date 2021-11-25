import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/data.dart';
import 'package:mymoney/utils/imagenames.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: white,
      child: Padding(
        padding: const EdgeInsets.only(top: 94, left: 40),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              maxRadius: 35,
              backgroundImage: AssetImage(personImage),
              backgroundColor: white,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 90,
              height: 70,
              child: Text(
                "Mattie Hardwick",
                style: TextStyle(
                  fontSize: 19,
                  color: black0D1F3C,
                  fontFamily: "TitilliumWebSemiBold",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: drawerList.length,
                itemBuilder: (context, index) => ListTile(
                  leading: SvgPicture.asset(drawerList[index]["img"]),
                  minLeadingWidth: 20,
                  title: Text(
                    drawerList[index]["title"],
                    style: TextStyle(
                      fontSize: 19,
                      color: black0D1F3C,
                      fontFamily: "NunitoSemiBold",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
