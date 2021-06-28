
import 'package:flutter/material.dart';

ThemeData themeConfig() {
  return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'Roboto',
      textTheme: TextTheme(
        bodyText2: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ));
}