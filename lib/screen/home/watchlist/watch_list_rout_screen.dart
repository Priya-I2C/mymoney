import 'package:flutter/material.dart';
import 'package:mymoney/screen/home/watchlist/watchlist_screen.dart';

import 'all_stocks_screen.dart';
import 'buy_sell_screen.dart';

GlobalKey<NavigatorState> watchListRouteScreen = GlobalKey<NavigatorState>();

class WatchListRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: watchListRouteScreen,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return WatchListScreen();
              case '/AllStockScreen':
                return AllStockScreen();
            }
          },
        );
      },
    );
  }
}
