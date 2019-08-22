import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => _buildChatItem(),
        separatorBuilder: (context, index) => Divider(indent: 60.0,),
        itemCount: 10);
  }

  _buildChatItem() {
    return Theme(
      data: ThemeData(),
      child: ListTile(
        leading: CircleAvatar(
					radius: 30.0,
					backgroundColor: Color(0xffdddddd),
					child: Icon(Icons.person,color: Colors.white),
				),
        title: Text(
          "User 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("Ok"),
        trailing: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "1:25 pm",
                style: TextStyle(fontSize: 12.0),
              ),
              SizedBox(height: 3.0),
              CircleAvatar(
                child: Text(
                  "2",
                  style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                radius: 9.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
