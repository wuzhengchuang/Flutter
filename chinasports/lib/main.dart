import 'package:chinasports/chinasportapp.dart';
import 'package:chinasports/model/message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  var providers = [
    ChangeNotifierProvider(create: (context){
      return Message();
    },),
  ];
  return runApp(MultiProvider(
    providers: providers,
    child: ChinaSportsApp(),
  ));
}