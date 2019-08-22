import 'package:flutter/material.dart';
import 'package:anim_app/status_screen.dart';

import 'calls_screen.dart';
import 'camera_screen.dart';
import 'chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Clone",
      theme: ThemeData(
          fontFamily: "Medium",
          primaryColor: Color(0xff075E54),
          indicatorColor: Colors.white),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var width;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: PreferredSize(
          child: Container(
            child: TabBar(
              tabs: [
                Container(width: 30, child: Tab(icon: Icon(Icons.camera_alt))),
                Container(
                    width: width * 0.2,
                    child: Row(
                      children: <Widget>[
                        Tab(text: "CHATS"),
                        SizedBox(width: 5),
                        Tab(
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Theme.of(context).primaryColor),
                            ),
                            radius: 10,
                          ),
                        ),
                      ],
                    )),
                Container(width: width * 0.2, child: Tab(text: "STATUS")),
                Container(width: width * 0.2, child: Tab(text: "CALLS")),
              ],
              controller: _tabController,
              isScrollable: true,
            ),
          ),
          preferredSize: Size.fromHeight(60.0),
        ),
      ),
			body: TabBarView(children: [
				CameraScreen(),
				ChatScreen(),
				StatusScreen(),
				CallsScreen(),
			],controller: _tabController,),
    );
  }
}
