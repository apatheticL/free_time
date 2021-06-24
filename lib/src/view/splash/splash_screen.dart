import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freetime/src/business_logic/helper/constants/route_constant.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          RouteConstant.LOGIN,(Route<dynamic> route) => false
      );
    });
    return Scaffold(
      body: Container(
          child: Center(
            child: Text(""),
          )
      )

    );
  }
}
