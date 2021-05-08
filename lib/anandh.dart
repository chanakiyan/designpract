import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.camera_alt_outlined),
                  subtitle: Text("View Point"),
                  title: Text('Camera1'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt_rounded),
                  subtitle: Text("pixel"),
                  title: Text('Camera2'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.camera),
                  subtitle: Text("Mega pixel"),
                  title: Text('Camera3'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.camera_front),
                  subtitle: Text("2D"),
                  title: Text('Camera4'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              child: Text("Submit"), color: Colors.blue, onPressed: () {}),
          // ignore: deprecated_member_use
        ],
      ),
    );
  }
}
