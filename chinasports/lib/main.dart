import 'dart:io';

import 'package:chinasports/chinasportapp.dart';
import 'package:chinasports/model/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main(){
  var providers = [
    ChangeNotifierProvider(create: (context){
      return Message();
    },),
  ];
  if(Platform.isAndroid){
    SystemUiOverlayStyle systemUiOverlayStyle=SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  return runApp(MultiProvider(
    providers: providers,
    child: ChinaSportsApp(),
  ));

}