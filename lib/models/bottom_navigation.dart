import 'package:ekitaab_pasal/screens/cart.dart';
import 'package:ekitaab_pasal/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:ekitaab_pasal/screens/home.dart';
import 'package:ekitaab_pasal/screens/book_status.dart';
import 'package:ekitaab_pasal/screens/addBooks/addBook.dart';


 
 class MyBottomNavigationBar extends StatefulWidget {

   final Function(int) onIconPresedCallback;
  MyBottomNavigationBar({Key key, this.onIconPresedCallback}) : super(key: key);
   
   @override
   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
   
 }
  
 
 class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

   int currentTab = 0; 
 final List<Widget> _children =
 [
   Home(),
   BookStatus(),
   AddBookForm(),
   Cart(),
   UserProfile(),
 ];

   void _onItemTapped(int index) {
  setState(() {
    currentTab = index;
  });
}

   
  
   @override
   Widget build(BuildContext context) {
     return new Scaffold(

       body: _children[currentTab],
      bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.black,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.white,
        
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`
   
      child: new BottomNavigationBar(
        
        
          type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('Your Books'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text('Rent Books'),
          
        ),
           BottomNavigationBarItem(
           icon: Icon(Icons.shopping_cart),
           title: Text('Cart'),
         ),
           BottomNavigationBarItem(
           icon: Icon(Icons.person_outline),
           title: Text('Profile'),

         ),
      ],
      currentIndex: currentTab,
      selectedItemColor: Colors.greenAccent[800],
      onTap: _onItemTapped,
    ),   //  body: _setDrawerItemWidget(_selectedIndex)
   ),
   
  

       
     );
   }
 }