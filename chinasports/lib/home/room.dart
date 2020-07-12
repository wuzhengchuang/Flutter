import 'package:chinasports/home/product.dart';
import 'package:chinasports/model/message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
typedef ResultFunction = Function(dynamic result);
//直播间
class RoomPage extends StatefulWidget {
  final resultFunction;
  RoomPage({this.resultFunction});
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('123');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('直播间'),
        actions: <Widget>[],
      ),
      body: Container(
        child: FlatButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
           return ProductPage();
         }));
        }, child: Text('进入商品页面')),
      ),
    );
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(widget.resultFunction!=null){
      widget.resultFunction('直播间页面销毁了');
    }
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;
}
