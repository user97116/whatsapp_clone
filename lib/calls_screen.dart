import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
			children: <Widget>[
				_buildCallsItem(true),
				_buildCallsItem(true),
				_buildCallsItem(true),
				_buildCallsItem(true),
				_buildCallsItem(false),
				_buildCallsItem(true),
				_buildCallsItem(false),
				_buildCallsItem(false),
				_buildCallsItem(false),
				_buildCallsItem(true),
			],
		),
			floatingActionButton: FloatingActionButton(onPressed: (){},
			child: Icon(Icons.add_call,),backgroundColor: Colors.green,),
    );
  }
  _buildCallsItem(isCall) {
  	return ListTile(
			leading: CircleAvatar(
				radius: 25.0,
				backgroundColor: Color(0xffdddddd),
				child: Icon(Icons.person,color: Colors.white),
			),
			title: Text("User 1"),
			subtitle: Row(
				children: <Widget>[
					Icon(Icons.subdirectory_arrow_left,size: 12.0,color: Colors.red),
					SizedBox(width: 3.0,),
					Text("17 May, 2:15 pm",style: TextStyle(color: Colors.grey),)
				],
			),
			trailing: IconButton(icon: Icon(isCall?Icons.call:Icons.videocam,color: Colors.green,), onPressed: (){}),
		);
	}
}
