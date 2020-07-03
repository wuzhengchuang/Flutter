
import 'package:badges/badges.dart';
import 'package:chinasports/attention/attention.dart';
import 'package:chinasports/circle/circle.dart';
import 'package:chinasports/event/event.dart';
import 'package:chinasports/home/home.dart';
import 'package:chinasports/mine/mine.dart';
import 'package:chinasports/model/message.dart';
import 'package:chinasports/properties/cscolor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _currentSelectIndex = 0;
  final List<Widget> _pages = [HomePage(),EventPage(),CirclePage(),AttentionPage(),MinePage()];
  final PageController _pageController = PageController(initialPage: 0);
  List<BottomNavigationBarItem> _bottomItems = [];
  List<BottomNavigationBarItem> bottomItems(){
    if(_bottomItems.length==0){
       _bottomItems=[
        BottomNavigationBarItem(
          title: Text('首页'),
          icon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.home}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.home>0,
                child: Image.asset('images/tabs/tab_home_n.png',width: 22,),
              );
            },
          ),
          activeIcon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.home}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.home>0,
                child: Image.asset('images/tabs/tab_home_s.png',width: 22,),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text('赛程'),
          icon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.event}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.event>0,
                child: Image.asset('images/tabs/tab_event_n.png',width: 22,),
              );
            },
          ),
          activeIcon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.event}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.event>0,
                child: Image.asset('images/tabs/tab_event_s.png',width: 22,),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text('体育圈'),
          icon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.circle}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.circle>0,
                child: Image.asset('images/tabs/tab_find_n.png',width: 22,),
              );
            },
          ),
          activeIcon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.circle}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.circle>0,
                child: Image.asset('images/tabs/tab_find_s.png',width: 22,),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text('关注'),
          icon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.attention}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.attention>0,
                child: Image.asset('images/tabs/tab_attention_n.png',width: 22,),
              );
            },
          ),
          activeIcon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.attention}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.attention>0,
                child: Image.asset('images/tabs/tab_attention_s.png',width: 22,),
              );
            },
          ),
        ),
        BottomNavigationBarItem(
          title: Text('我的'),
          icon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.mine}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.mine>0,
                child: Image.asset('images/tabs/tab_mine_n.png',width: 22,),
              );
            },
          ),
          activeIcon: Consumer<Message>(
            builder: (context,message,child){
              return Badge(
                elevation:0,
                toAnimate: false,
                shape: BadgeShape.square,
                borderRadius: 8,
                badgeContent: Container(
                  height: 8,
                  child: Text('${message.mine}',style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),),
                ),
                showBadge: message.mine>0,
                child: Image.asset('images/tabs/tab_mine_s.png',width: 22,),
              );
            },
          ),
        ),
      ];
    }
    return _bottomItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems(),
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


