import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mymoney/screen/home/watchlist/buy_sell_screen.dart';
import 'package:mymoney/screen/home/watchlist/home_screen.dart';
import 'screen/home/drawer_open_.dart';
import 'screen/home/notification_screen.dart';
import 'screen/home/watchlist/all_stocks_screen.dart';
import 'screen/home/watchlist/toggle_design_screen.dart';
import 'screen/welcome/welcome_screen.dart';

import 'utils/color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: white,
        ),
      ),
    );
  }
}
