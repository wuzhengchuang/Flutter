import 'package:chinasports/base/base.dart';
import 'package:chinasports/home/home.dart';
import 'package:chinasports/home/room.dart';
import 'package:chinasports/properties/cscolor.dart';
import 'package:flutter/material.dart';
class ChinaSportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '中国体育',
      theme: ThemeData(
        primaryColor: CSColor.themeColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: BasePage(),
    );
  }
}
