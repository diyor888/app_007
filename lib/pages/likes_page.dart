import 'package:flutter/material.dart';
class LikesPage extends StatefulWidget {
  static const String id = "likes_page";
  const LikesPage({Key? key}) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(" L i k e s ",style: TextStyle(fontSize: 35),),
      ),
    );
  }
}
