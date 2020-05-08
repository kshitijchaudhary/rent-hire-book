import 'package:flutter/material.dart';
import 'package:ekitaab_pasal/models/bottom_navigation.dart';

class BookStatus extends StatefulWidget {
  @override
  _BookStatusState createState() => _BookStatusState();
}

class _BookStatusState extends State<BookStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Your Books"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: null),
          
        ],
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Text("You have no books yet "),
      ),
    );
  }
}