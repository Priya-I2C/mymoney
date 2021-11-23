import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerOpen extends GetxController {
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 0.0;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState.openDrawer();
  }

  void setQuality({double xOffset, double yOffset, double scaleFactor}) {
    this.xOffset = xOffset;
    this.yOffset = yOffset;
    this.scaleFactor = scaleFactor;
    update();
  }
}
