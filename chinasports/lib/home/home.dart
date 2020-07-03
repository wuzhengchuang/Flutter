import 'package:chinasports/model/message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('首页保持了页面状态');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(onPressed: (){
             Message message = Provider.of<Message>(context,listen: false);
             message.home++;
             message.updateMessageNum();
          },
          child: Text('添加主页消息数')),
            FlatButton(onPressed: (){
              Message message = Provider.of<Message>(context,listen: false);
              message.event++;
              message.updateMessageNum();
            },
                child: Text('添加赛程消息数')),
            FlatButton(onPressed: (){
              Message message = Provider.of<Message>(context,listen: false);
              message.circle++;
              message.updateMessageNum();
            },
                child: Text('添加体育圈消息数')),
            FlatButton(onPressed: (){
              Message message = Provider.of<Message>(context,listen: false);
              message.attention++;
              message.updateMessageNum();
            },
                child: Text('添加关注消息数')),
            FlatButton(onPressed: (){
              Message message = Provider.of<Message>(context,listen: false);
              message.mine++;
              message.updateMessageNum();
            },
                child: Text('添加我的消息数')),
            FlatButton(onPressed: (){
              Message message = Provider.of<Message>(context,listen: false);
              message.mine--;
              message.updateMessageNum();
            },
                child: Text('减少我的消息数')),
          ],
        ),
      ),
    );
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }
}
