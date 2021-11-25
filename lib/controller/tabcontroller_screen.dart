import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Day'),
    Tab(text: 'Week'),
    Tab(text: 'Month'),
    Tab(text: 'Year'),
    Tab(text: 'All'),
  ];
  final List<Tab> myTabs2 = <Tab>[
    Tab(text: 'Pending'),
    Tab(text: 'Executed'),
  ];
  TabController controller;
  TabController controller1;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    controller1 = TabController(vsync: this, length: myTabs2.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
