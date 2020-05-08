import 'package:flutter/material.dart';
import 'package:ekitaab_pasal/screens/cart.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Notifications"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
          },),
          
        ],
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Text("You have no notifications yet "),
      ),
    );
  }
}