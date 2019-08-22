import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(iconTheme: IconThemeData(color: Colors.white)),
      child: Stack(
        alignment: Alignment(0, 1),
        children: <Widget>[
          Container(color: Colors.blue),
          Container(
            child: Column(
							mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.keyboard_arrow_up),
                Container(
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(
                        10,
                        (index) => Container(
                              color: Colors.red,
                              width: 70.0,
                              margin: EdgeInsets.all(4.0),
                            )),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.flash_off), onPressed: () {}),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: ShapeDecoration(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                      ),
                    ),
                    IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
                  ],
                ),
								SizedBox(
									height: 3.0,
								),
                Container(
                  height: 30.0,
                  color: Colors.black,
									child: Align(
										child: Text("Hold for video tap for photo",style: TextStyle(color: Colors.white),),
									),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
