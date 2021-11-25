import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mymoney/controller/drawer_open_controller.dart';
import 'package:mymoney/screen/auth/login/login_screen.dart';
import 'package:mymoney/screen/auth/signup/signup_screen.dart';
import 'package:mymoney/screen/home/order/order_screen.dart';
import 'package:mymoney/screen/home/watchlist/watchlist_screen.dart';
import 'package:mymoney/utils/color.dart';
import 'package:mymoney/utils/imagenames.dart';

class HomeScreen extends StatelessWidget {
  DrawerOpen drawerOpen = Get.put(DrawerOpen());
  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    print("Xscale:}");
    return Obx(
      () => InkWell(
        onTap: () {
          drawerOpen.xOffset.value = 0;
          drawerOpen.yOffset.value = 0;
          drawerOpen.scaleFactor.value = 1.0;
          drawerOpen.isChange(false);
        },
        child: Container(
          /*decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff40000000),
                spreadRadius: 2,
                blurRadius: 9,
              ),
            ],
          ),*/
          child: AnimatedContainer(
            height: Get.height,
            width: Get.width,
            curve: Curves.bounceOut,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff40000000),
                  spreadRadius: 0.5,
                  blurRadius: 20,
                ),
              ],
            ),
            transform: Matrix4.translationValues(
              drawerOpen.xOffset.value,
              drawerOpen.yOffset.value,
              0,
            )..scale(drawerOpen.scaleFactor.value),
            duration: Duration(
              milliseconds: 250,
            ),
            child: Scaffold(
              backgroundColor: pageBackGroundC,
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                backgroundColor: pageBackGroundC,
                elevation: 0,
                leading: IconButton(
                  icon: SvgPicture.asset(
                    drawerIcon,
                    color: black,
                  ),
                  onPressed: () {
                    drawerOpen.xOffset.value = -150;
                    drawerOpen.yOffset.value = 120;
                    drawerOpen.isChange(true);
                    drawerOpen.scaleFactor.value = 0.7;
                  },
                ),
                title: Container(
                  height: 40,
                  width: 500,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: TextField(
                    cursorColor: appColor,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                      hintText: "Search anything",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: gray9B9797,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: gray9B9797,
                        size: 20,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 20,
                            width: 1,
                            child: VerticalDivider(
                              color: gray9B9797,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              sort,
                              color: gray9B9797,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: GetBuilder<ProfileController>(
                init: ProfileController(),
                builder: (s) => IndexedStack(
                  index: s.selectedIndex.toInt(),
                  children: <Widget>[
                    // LogInScreen(),
                    WatchListScreen(),
                    OrderScreen(),
                    Center(
                      child: Text("3"),
                    ),
                    Center(
                      child: Text("3"),
                    ),
                    Center(
                      child: Text("3"),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: SuperFaBottomNavigationBar(),
            ),
          ),
        ),
      ),
    );
  }
}

class SuperFaBottomNavigationBar extends StatelessWidget {
  const SuperFaBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      // init: ProfileController(),
      builder: (s) => Obx(
        () => BottomNavigationBar(
          backgroundColor: gray9B9797,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                watchList,
                color:
                    s.selectedIndex.value == 0 ? Color(0xff2F80ED) : gray9B9797,
              ),
              /* Icon(Icons.home)*/
              title: Text(
                'Watchlist',
                style: TextStyle(
                  fontSize: 10,
                  color: s.selectedIndex.value == 0
                      ? Color(0xff2F80ED)
                      : gray9B9797,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                oders,
                color:
                    s.selectedIndex.value == 1 ? Color(0xff2F80ED) : gray9B9797,
              ),
              title: Text(
                'Order',
                style: TextStyle(
                  fontSize: 10,
                  color: s.selectedIndex.value == 1
                      ? Color(0xff2F80ED)
                      : gray9B9797,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                portFolio,
                color:
                    s.selectedIndex.value == 2 ? Color(0xff2F80ED) : gray9B9797,
              ),
              title: Text(
                'PortFolio',
                style: TextStyle(
                  fontSize: 10,
                  color: s.selectedIndex.value == 2
                      ? Color(0xff2F80ED)
                      : gray9B9797,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                fund,
                color:
                    s.selectedIndex.value == 3 ? Color(0xff2F80ED) : gray9B9797,
              ),
              title: Text(
                'Fund',
                style: TextStyle(
                  fontSize: 10,
                  color: s.selectedIndex.value == 3
                      ? Color(0xff2F80ED)
                      : gray9B9797,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                user,
                color:
                    s.selectedIndex.value == 4 ? Color(0xff2F80ED) : gray9B9797,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  fontSize: 10,
                  color: s.selectedIndex.value == 4
                      ? Color(0xff2F80ED)
                      : gray9B9797,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
          currentIndex: s.selectedIndex.toInt(),
          selectedItemColor: Colors.amber[800],
          onTap: (index) => s.changeTabIndex(index),
        ),
      ),
    );
  }
}
