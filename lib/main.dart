import 'package:ekitaab_pasal/login/login.dart';
import 'package:ekitaab_pasal/screens/home.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

 void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Kitab Pasal',
       debugShowCheckedModeBanner: false,
       home:CheckAuth(),

      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        primaryColor: Colors.cyan[400],
        accentColor: Colors.deepOrange[200],
      ),
      
    );
  }
}
class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if(token != null){
      setState(() {
        isAuth = true;
      }); 
    }
  }
  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = Home();
    } else {
      child = Login();
    }
    return Scaffold(
       body: child,
    );
  }
}

