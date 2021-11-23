import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/drawer_open_controller.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

class HomeScreen extends StatelessWidget {
  DrawerOpen drawerOpen = Get.put(DrawerOpen());

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform:
          Matrix4.translationValues(drawerOpen.xOffset, drawerOpen.yOffset, 0)
            ..scale(drawerOpen.scaleFactor),
      color: Colors.white,
      duration: Duration(
        milliseconds: 250,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Obx(
                () => IconButton(
                  icon: SvgPicture.asset(
                    drawerIcon,
                    color: black,
                  ),
                  onPressed: () {
                    drawerOpen.openDrawer();
                    drawerOpen.setQuality(
                      scaleFactor: 0.6,
                      xOffset: 230,
                      yOffset: 150,
                    );
                    /* drawerOpen.xOffset = 230;
                    drawerOpen.yOffset = 150;
                    drawerOpen.scaleFactor = 0.6;*/
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
    /*Scaffold(
      drawer: new Drawer(),
      backgroundColor: pageBackGroundC,
      appBar: AppBar(
        backgroundColor: pageBackGroundC,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
    );*/
  }
}
