import 'package:flutter/material.dart';
class CirclePage extends StatefulWidget {
  @override
  _CirclePageState createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('体育圈保持了页面状态');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('体育圈'),
        elevation: 0,
      ),
    );
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive {
    return true;
  }
}
