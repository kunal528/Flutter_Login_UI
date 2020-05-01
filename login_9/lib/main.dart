import 'package:flutter/material.dart';
import 'package:login_9/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xffD195BB),
      ),
      home: HomePage(),
    );
  }
}