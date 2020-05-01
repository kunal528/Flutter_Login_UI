import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text("SIGN UP",
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 88,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Colors.black.withOpacity(0.6),
                      elevation: 0,
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 75, left: 22, right: 22, bottom: 0),
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff9b9b9b),
                                    ),
                                    decoration: InputDecoration(
                                        fillColor: Color(0xff2a2a2a),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        prefixIcon: Icon(Icons.account_circle,
                                            color: Color(0xffd0d0d0)),
                                        labelText: "Full Name",
                                        labelStyle: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff9b9b9b),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff9b9b9b),
                                    ),
                                    decoration: InputDecoration(
                                        fillColor: Color(0xff2a2a2a),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        prefixIcon: Icon(Icons.email,
                                            color: Color(0xffd0d0d0)),
                                        labelText: "Email",
                                        labelStyle: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff9b9b9b),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff9b9b9b),
                                    ),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        fillColor: Color(0xff2a2a2a),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent)),
                                        prefixIcon: Icon(Icons.lock,
                                            color: Color(0xffd0d0d0)),
                                        labelText: "Password",
                                        labelStyle: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff9b9b9b),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: <Widget>[
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool value) {
                                          setState(() {
                                            check = !check;
                                          });
                                        },
                                        activeColor: Color(0xfff05522),
                                        checkColor:
                                            Colors.white.withOpacity(0.6),
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text: "I agree to the",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff9b9b9b),
                                              ),
                                              children: [
                                            TextSpan(
                                              text: "Terms and Conditions",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xfff05522),
                                              ),
                                            ),
                                          ]))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      fontFamily: "SFUIText",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                color: Color(0xfff05522),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Already have an account? ",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          children: [
                        TextSpan(
                          text: "Sign in",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff05522),
                          ),
                        ),
                      ])),
                ],
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 114),
                child: CircleAvatar(
                  child: Image.asset("assets/Avatar.png"),
                  radius: 50,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
