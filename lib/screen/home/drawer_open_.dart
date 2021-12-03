import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/drawer_open_controller.dart';
import 'package:mymoney/screen/home/watchlist/home_screen.dart';

import 'drawer_screen_dir/drawer_screen.dart';

class DrawerOpenScreen extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !await Navigator.maybePop(
            navigatorKeys[profileController.selectedIndex.value].currentState.context);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
