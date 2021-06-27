import 'package:flutter/cupertino.dart';
import 'package:freetime/src/business_logic/helper/constants/route_constant.dart';
import 'package:freetime/src/view/home/home_view.dart';
import 'package:freetime/src/view/reminder/reminder_view.dart';

Map<String, WidgetBuilder> routeConfig() {
  return <String, WidgetBuilder>{
    RouteConstant.HOME: (context) => HomeView(),
    RouteConstant.REMINDER: (context) => ReminderView(),
  };
}