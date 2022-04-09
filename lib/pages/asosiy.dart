import 'package:app_007/pages/account_page.dart';
import 'package:app_007/pages/add_page.dart';
import 'package:app_007/pages/home_page.dart';
import 'package:app_007/pages/likes_page.dart';
import 'package:app_007/pages/search.dart';
import 'package:flutter/material.dart';
class Asosiy extends StatefulWidget {
  const Asosiy({Key? key}) : super(key: key);

  @override
  State<Asosiy> createState() => _AsosiyState();
}

class _AsosiyState extends State<Asosiy> {
  List pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    LikesPage(),
    AccountPage(),
  ];

  int myIndex = 0;
  void myOnTap(int index) {
    setState(() {
      myIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.lime,
        // fixedColor: Colors.cyanAccent,
        onTap: myOnTap,
        currentIndex: myIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue.withOpacity(0.8),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],
      ),

    );
  }
}
