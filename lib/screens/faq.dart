import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("FAQs"),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        child: new Center(
          child: new Text("Frequently Asked Questions"),
        ),
      ),
    );
  }
}