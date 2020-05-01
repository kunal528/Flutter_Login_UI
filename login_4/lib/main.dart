import 'package:flutter/material.dart';
import 'package:login_4/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff26022E),
      ),
      home: HomePage(),
    );
  }
}