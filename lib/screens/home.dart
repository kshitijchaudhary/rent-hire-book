import 'package:ekitaab_pasal/screens/addBooks/addBook.dart';
import 'package:ekitaab_pasal/animations/fade_animation.dart';
import 'package:ekitaab_pasal/screens/book_status.dart';
import 'package:ekitaab_pasal/screens/cart.dart';
import 'package:ekitaab_pasal/screens/profile.dart';
import 'package:ekitaab_pasal/widgets/appdrawer.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'notifications.dart';



class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
//String selectedCategorie="All";
class Home extends StatefulWidget {
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
 // List<String> categories = ["All","Recommended","Popular books","My books"];
    //List<Widget> bookShimmer = List();
    ScrollController _scrollController = ScrollController();
    int currentPage = 1;
    bool isCatLoading = true;
    bool dataAvailable = false;
    double _maxScroll;
    double deviceHeight;
    double deviceWidth;
    AnimationController controller;
    Animation animation;
    Animation<double> opacityAnimation;
    Animation slideAnimation;
    bool visible = false;
    int totalCartItems=0;
    List cartItems=[];
    List bannerImage = ['assets/images/group.jfif','assets/images/allbooks.jfif',
    'assets/images/chair.jfif'];
    bool isHomePageSelected = true;


  //int _selectedIndex = 0;
  @override
  void initState(){
   // _loadUserData();
   //checkCart();
    super.initState();
  }
  int currentTab = 0; 
 //static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  final List<Widget> screens =
 [
   Home(),
   BookStatus(),
   AddBookForm(),
   Cart(),
   UserProfile(),
 ];

//Active Page Tabs  
final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

// void _onItemTapped(int index) {
//    setState(() {
//      currentTab = index;
//    });
//  }
    @override
    Widget build(BuildContext context) {
      MediaQueryData media = MediaQuery.of(context);

       final Size screenSize = media.size;
    

    return  Scaffold(
      appBar: AppBar(
        title: new Text("Home") ,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
          }),
          
        ],
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
        backgroundColor: Colors.green,
       
      ),
      
//CODE FOR FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.green,),
        
        onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddBookForm()),
              );
          },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //FOR APP DRAWER
        drawer: AppDrawer(),
         body:SingleChildScrollView(
        // SafeArea(
        // child: Stack(
        //   fit: StackFit.expand,
        //   children: <Widget>[   
          //       PageStorage(
          //   child: currentScreen,
          //   bucket: bucket,
          // ),
         
          child:Column(
            children:<Widget>[
              FadeAnimation(1, Container(
                height:300,
                width: double.infinity,
                padding: EdgeInsets.only(left:25,right:25,top:60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0)
                    ),
                    gradient:LinearGradient(
                      begin:Alignment.topRight,
                      colors:[
                        Color.fromRGBO(0, 250, 154, 1),
                        Color.fromRGBO(0, 128, 128, 1)
                      ]
                    ), 
                    ), 
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex:4,
                          child:FadeAnimation(1.1,Text('Final Year Project \nBook Rental System',style:TextStyle(
                            fontSize:25,
                            fontWeight:FontWeight.bold,
                            color:Color.fromRGBO(97, 90, 90, 1)
                          )
                          ),
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: FadeAnimation(1.2,Image.asset('assets/logo.png')),
                        ),
                      ],
                      ),
              ),
              ),
           Transform.translate(
             offset:Offset(0,-35),
            child: FadeAnimation(1.3,Container(
              height: 60,
              padding: EdgeInsets.only(left:20, top:8),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 20.0,
                    offset:Offset(0,10.0)
                  )
                ],
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color:Colors.black,size: 20.0,),
                  border:InputBorder.none,
                  hintText:'Search'
                ),
              ),
            )),
           ),
           Padding(
             padding: EdgeInsets.all(8.0),
            
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              
               children: <Widget>[
                 FadeAnimation(1.2,Text('Browse by Categories',style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                   color:Color.fromRGBO(97, 90, 90, 1)
                 ),
                 
                 ),
                 ), 
                   Padding(
                        padding: const EdgeInsets.fromLTRB(150.0, 0, 8.0, 8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(color: Color(0xFFFF900F))),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),                
                                child: Icon(Icons.arrow_forward_ios,
                                    ),
                              ),
                              )
                        ),
               ],
               ),
             
            ), 
           
            Padding(
            padding: EdgeInsets.all(8.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('LIST OF CATEGORIES',style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                   color:Color.fromRGBO(97, 90, 90, 1)
                 ),
                ),
              ],)


              ),    
            ],
            
              
          ),
        
          
          ),
        //   ],
        // ),
        // ),
  
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Home(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.green : Colors.black,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.green : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            BookStatus(); // if user taps on this books tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.library_books,
                          color: currentTab == 1 ? Colors.green : Colors.black,
                        ),
                        Text(
                          'Your Books',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.green : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Notifications(); // if user taps on this notifications tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          color: currentTab == 2 ? Colors.green : Colors.black,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.green : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            UserProfile(); // if user taps on this profile tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_outline,
                          color: currentTab == 3 ? Colors.green : Colors.black,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.green : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ), 
    );
    }
}
      