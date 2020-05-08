import 'package:ekitaab_pasal/screens/book_status.dart';
import 'package:flutter/foundation.dart';
import 'package:mdi/mdi.dart';
import 'package:flutter/material.dart';
import 'package:ekitaab_pasal/screens/cart.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
//String selectedCategorie="All";
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>{
   @override
  void initState(){
   // _loadUserData();
    super.initState();
  }
 

  /*_loadUserData() async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user'));

    if(user != null) {
      setState(() {
        name = user['name'];
      });
    }
  }*/
    @override
    Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('User Profile'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed:  () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
          }),
        ],
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
        backgroundColor: Colors.green,
       
      ),
    
    body:new GestureDetector(
        onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
       
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:500.0,
                    width: 350.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                             Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.faceProfile, size: 40.0, color: Colors.black),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Center(
                                child: Text("User Profile",
                                style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Open-Sans",
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                letterSpacing: 1.5)
                            ),
                           ),
                              ),
                           ],        
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.renameBox, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text('Kshitij Chaudhary',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.phoneRing, size: 30.0, color: Colors.black), 
                                 
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text('+977 98XXXXXXXX',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.email, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text('yourname@example.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.mapMarker, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text('123 Street Kathmandu NP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top:30),
                            child: Center(
                              child: ButtonTheme(
                                minWidth: 120.0,
                                height: 50.0,
                                child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                color: Colors.green,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookStatus()), );
                                  },
                                  child: const Text(
                                    'See Books',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Open-Sans",
                                      color: Colors.white
                                      )
                                    
                                  ),
                                ),
                              ),
                            ),                            
                          ),
                       ], 
                      ),
                  ),
              ]
              ),
            ),
        ]
        ),
      ),
      ),
    );
  }
}
   