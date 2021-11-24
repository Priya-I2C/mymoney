import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/drawer_open_controller.dart';
import 'package:mymoney/screen/home/watchlist/home_screen.dart';

import 'drawer_screen_dir/drawer_screen.dart';

class DrawerOpenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
