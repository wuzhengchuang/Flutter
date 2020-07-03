import 'package:chinasports/attention/attention.dart';
import 'package:chinasports/circle/circle.dart';
import 'package:chinasports/event/event.dart';
import 'package:chinasports/home/home.dart';
import 'package:chinasports/mine/mine.dart';
import 'package:chinasports/properties/cscolor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _currentSelectIndex = 0;
  final List<Widget> _pages = [HomePage(),EventPage(),CirclePage(),AttentionPage(),MinePage()];
  final PageController _pageController = PageController(initialPage: 0);
  final List<BottomNavigationBarItem> _bottomItems=[
    BottomNavigationBarItem(
      title: Text('首页'),
      icon: Image.asset('images/tabs/tab_home_n.png',width: 22,),
      activeIcon: Image.asset('images/tabs/tab_home_s.png',width: 22,),
    ),
    BottomNavigationBarItem(
      title: Text('赛程'),
      icon: Image.asset('images/tabs/tab_event_n.png',width: 22,),
      activeIcon: Image.asset('images/tabs/tab_event_s.png',width: 22,),
    ),
    BottomNavigationBarItem(
      title: Text('体育圈'),
      icon: Image.asset('images/tabs/tab_find_n.png',width: 22,),
      activeIcon: Image.asset('images/tabs/tab_find_s.png',width: 22,),
    ),
    BottomNavigationBarItem(
      title: Text('关注'),
      icon: Image.asset('images/tabs/tab_attention_n.png',width: 22,),
      activeIcon: Image.asset('images/tabs/tab_attention_s.png',width: 22,),
    ),
    BottomNavigationBarItem(
      title: Text('我的'),
      icon: Image.asset('images/tabs/tab_mine_n.png',width: 22,),
      activeIcon: Image.asset('images/tabs/tab_mine_s.png',width: 22,),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        type: BottomNavigationBarType.fixed,
        fixedColor: CSColor.themeColor,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: _currentSelectIndex,
        onTap: (currentIndex){
          if(_currentSelectIndex != currentIndex){
            _currentSelectIndex=currentIndex;
            _pageController.jumpToPage(_currentSelectIndex);
            setState(() {});
          }
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        controller: _pageController,
        children: _pages,
        onPageChanged: (currentIndex){
          if(_currentSelectIndex != currentIndex){
            _currentSelectIndex=currentIndex;
            _pageController.jumpToPage(_currentSelectIndex);
            setState(() {});
          }
        },
      ),
    );
  }
}


