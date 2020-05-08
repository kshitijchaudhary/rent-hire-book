import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text("Your Cart"),
        backgroundColor: Colors.green,
      ),
      
      body: new Center(
        child: new Text("You have nothing to display in cart page "),
      ),
      
    );
  }
}