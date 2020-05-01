import 'package:flutter/material.dart';
import 'package:login_11/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff1A025F),
      ),
      home: HomePage(),
    );
  }
}