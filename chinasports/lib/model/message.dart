import 'package:flutter/material.dart';
//项目中涉及到的红点未读消息树统一处理
class Message extends ChangeNotifier{
  int home = 0;
  int event = 0;
  int circle = 0;
  int attention = 0;
  int mine = 0;
  Message({this.home=0,this.event=0,this.circle=0,this.attention=0,this.mine=0});
  void updateMessageNum(){
    notifyListeners();
  }
}