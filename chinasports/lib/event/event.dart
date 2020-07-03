import 'package:flutter/material.dart';
class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> with AutomaticKeepAliveClientMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('赛事保持了页面状态');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('赛事'),
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
