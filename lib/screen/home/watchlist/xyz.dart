import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorPage extends StatelessWidget {
  final navigatorKey;
  Widget child;

  NavigatorPage({this.navigatorKey, this.child});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        // print("NAME : ${settings.name}");
        return MaterialPageRoute(
          settings: settings,
          maintainState: false,
          fullscreenDialog: false,
          builder: (BuildContext context) {
            return Scaffold(
              // appBar: appBar(settings.name),
              body: child,
            );
          },
        );
      },
    );
  }
}
