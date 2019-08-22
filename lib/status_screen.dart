import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildMyStatus("My Status","Today, 6.11 am"),
				_buildText("Recent updates"),
				_buildMyStatus("User 1","45 minutes ago"),
				_buildMyStatus("User 2","15 minutes ago"),
				_buildText("Viewed updates"),
				_buildMyStatus("User 4","Yesterday, 11:23 pm"),
        ],
      ),
			floatingActionButton: Column(
				mainAxisSize: MainAxisSize.min,
			  children: <Widget>[
			    FloatingActionButton(onPressed: (){},
			    child: Icon(Icons.edit,color: Colors.blueGrey,),mini: true,backgroundColor: Color(0xffdddddd),),
					SizedBox(height: 10.0,),
					FloatingActionButton(onPressed: (){},
						child: Icon(Icons.camera_enhance),backgroundColor: Colors.green,),
			  ],
			),
    );
  }
  _buildText(text) {
  	return Padding(
			padding: const EdgeInsets.all(8.0),
			child: Text(text,style: TextStyle(color: Colors.grey),),
		);
	}

  _buildMyStatus(title,time) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
											radius: 25.0,
											backgroundColor: Color(0xffdddddd),
											child: Icon(Icons.person,color: Colors.white),
										),
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
											title,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      time,
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.green,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
