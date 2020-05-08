import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("Contact Us"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Center(
          child: new Text("Contact Us"),
        ),
      ),
    );
  }
}