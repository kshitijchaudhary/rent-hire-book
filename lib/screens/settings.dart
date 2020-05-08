import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text("Settings"),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Text("Page not Built Yet "),
      ),
    );
      
  }
}