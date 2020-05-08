import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Center(
          child: new Text("About Us"),
        ),
      ),
    );
  }
}