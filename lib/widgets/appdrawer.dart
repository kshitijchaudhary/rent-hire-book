import 'package:ekitaab_pasal/login/login.dart';
import 'package:ekitaab_pasal/screens/about.dart';
import 'package:ekitaab_pasal/screens/contactus.dart';
import 'package:ekitaab_pasal/screens/faq.dart';
import 'package:ekitaab_pasal/screens/home.dart';
import 'package:ekitaab_pasal/screens/notifications.dart';
import 'package:ekitaab_pasal/screens/profile.dart';
import 'package:ekitaab_pasal/screens/settings.dart';
import 'package:flutter/material.dart';


class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  
  buildList(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'sans',
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            color: Colors.grey,
            child: Center(
              child:Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:30),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/logo.png'),

                      minRadius: 20,
                      maxRadius: 50,
                      ),
                    
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10),
                    child: Text(
                      'E-Kitab Pasal',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
              )
               
            ),
          ),
           buildList(
            'Home',
            Icons.home,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {      
                    return Home();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
          buildList(
            'Notifications',
            Icons.notifications,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return Notifications();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
          buildList(
            'Profile',
            Icons.person,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return UserProfile();
                    
                  },
                  
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 3.0,
            ),
          buildList(
            'Contact Us',
            Icons.contact_mail,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return ContactPage();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
          buildList(
            'FAQs',
            Icons.question_answer,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return FAQPage();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
          buildList(
            'About App',
            Icons.library_books,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return AboutPage();
                  },
                ),
              );
            },
          ),
           new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
          buildList(
            'Settings',
            Icons.settings,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return SettingsPage();
                  },
                ),
              );
            },
          ),
          new Divider(
            color: Colors.greenAccent,
            height: 2.0,
            ),
          buildList(
            'Log Out',
            Icons.exit_to_app,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return Login();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.greenAccent,
              height: 2.0,
            ),
        ],
      ),
      
    );
  }
}