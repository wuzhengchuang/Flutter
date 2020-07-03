import 'package:chinasports/base/base.dart';
import 'package:chinasports/properties/cscolor.dart';
import 'package:flutter/material.dart';
class ChinaSportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: CSColor.themeColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: BasePage(),
    );
  }
}
