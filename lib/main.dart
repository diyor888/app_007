import 'package:app_007/pages/account_page.dart';
import 'package:app_007/pages/add_page.dart';
import 'package:app_007/pages/asosiy.dart';
import 'package:app_007/pages/home_page.dart';
import 'package:app_007/pages/likes_page.dart';
import 'package:app_007/pages/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Asosiy(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SearchPage.id: (context) => SearchPage(),
        AddPage.id: (context) => AddPage(),
        LikesPage.id: (context) => LikesPage(),
        AccountPage.id: (context) => AccountPage(),
      },
    );
  }
}

