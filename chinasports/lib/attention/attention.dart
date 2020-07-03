import 'package:flutter/material.dart';
class AttentionPage extends StatefulWidget {
  @override
  _AttentionPageState createState() => _AttentionPageState();
}

class _AttentionPageState extends State<AttentionPage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('关注保持了页面状态');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关注'),
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
