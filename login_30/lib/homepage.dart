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
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff1e2e9),
        image: DecorationImage(
            image: AssetImage("assets/bg.png"), alignment: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                Container(
                  width: 107,
                  height: 107,
                  decoration: BoxDecoration(
                      color: Color(0xff3f3441),
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text(
                      "C",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 72,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 270,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("SIGN IN",
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3f3441),
                        )),
                    Text("I am new, register me!",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Color(0xff3f3441),
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    hintText: "Email Address",
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xff8492a6),
                    ),
                  ),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xff8492a6),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    hintText: "Password",
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xff8492a6),
                    ),
                  ),
                  obscureText: true,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Color(0xff8492a6),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Forgot Password?",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffcb6560),
                        )),
                    SizedBox(
                      height: 50,
                      width: 97,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text("SIGN IN",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        color: Color(0xff3f3441),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
