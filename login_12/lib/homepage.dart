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
          image: DecorationImage(
              image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 43,
              ),
              Center(
                child: Container(
                  height: 107,
                  width: 107,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white,
                        Color(0xffe5e5e5),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text("C",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 72,
                          color: Color(0xffd82032),
                        )),
                  ),
                ),
              ),
              Center(
                child: Text("Code Decoders",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w600,
                      fontSize: 44,
                      color: Colors.white,
                    )),
              ),
              Center(
                child: Text("Sign in to continue",
                    style: TextStyle(
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Label Text",
                                    style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffa6aebc),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffa6aebc),
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: "Your Email",
                                  hintStyle: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffa6aebc),
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Label Text",
                                    style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffa6aebc),
                                    )),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text("Forgot Password?",
                                      style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Color(0xffdd2727),
                                      )),
                                ),
                              ],
                            ),
                            TextFormField(
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffa6aebc),
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffe1e4e8),
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: "Your Password",
                                  hintStyle: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffa6aebc),
                                  )),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                color: Color(0xffd82032),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
