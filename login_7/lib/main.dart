import 'package:flutter/material.dart';
import 'package:login_7/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xffB63A31),
      ),
      home: HomePage(),
    );
  }
}
