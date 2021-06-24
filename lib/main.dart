import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freetime/src/business_logic/helper/constants/route_constant.dart';
import 'package:freetime/src/business_logic/helper/route/routes.dart';
import 'package:freetime/src/business_logic/helper/theme/theme_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return App();
  }
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iCONS',
      theme: themeConfig(),
      initialRoute: RouteConstant.SPLASH_SCREEN,
      routes: routeConfig(),
    );
  }
}



