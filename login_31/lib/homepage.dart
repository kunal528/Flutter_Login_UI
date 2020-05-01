import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
        height: 390,
        width: double.infinity,
        decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.1), BlendMode.darken))),
              ),
          SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 65,
                      ),
                      Center(
                        child: Container(
                          height: 107,
                          width: 107,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Color(0xffe5e5e5),
                              ],
                              end: Alignment.bottomLeft,
                              begin: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Center(
                            child: Text(
                              "C",
                              style: GoogleFonts.raleway(
                                fontSize: 72,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffe4595d),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 260,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          fillColor: Color(0xfff5f5f5),
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696e72),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff696e72),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          fillColor: Color(0xfff5f5f5),
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696e72),
                          ),
                        ),
                        obscureText: true,
                        style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff696e72),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffe4595d),
                          ),
                        ),
                        color: Color(0xff212121),
                        minWidth: double.infinity,
                        height: 48,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "No account? No worries :) ",
                        style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff696e72),
                        ),
                        children: [
                           TextSpan(
                        text: "Sign up!",
                        style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffe4595d),
                        ),),
                        ]
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
