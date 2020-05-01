import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  bool password = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e4050),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 57),
                child: Center(
                  child: Container(
                    height: 363,
                    width: 363,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 1,
                        color: Color(0xffa4c3d0).withOpacity(0.05),
                      ),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: Center(
                      child: Container(
                        height: 295,
                        width: 295,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: Color(0xffa4c3d0).withOpacity(0.05),
                          ),
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Center(
                          child: Container(
                            height: 211,
                            width: 211,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                width: 1,
                                color: Color(0xffa4c3d0).withOpacity(0.18),
                              ),
                              borderRadius: BorderRadius.circular(500),
                            ),
                            child: Center(
                              child: Container(
                                height: 155,
                                width: 155,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/profile.png")),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(500)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Please login to continue",
                style: GoogleFonts.montserrat(
                    fontSize: 13.59,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 27,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: Color(0xff7f8c99),
                        ),
                        decoration: InputDecoration(
                            hintText: "codedecoders@gmail.com",
                            hintStyle: GoogleFonts.montserrat(
                              fontSize: 13.59,
                              color: Color(0xff7f8c99),
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Color(0xff009b99),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            fillColor: Color(0xff333443),
                            filled: true),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          color: Color(0xff7f8c99),
                        ),
                        obscureText: password,
                        decoration: InputDecoration(
                            hintText: "• • • • • • • • •",
                            hintStyle: GoogleFonts.montserrat(
                              fontSize: 13.59,
                              color: Color(0xff7f8c99),
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Color(0xff009b99),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            fillColor: Color(0xff333443),
                            filled: true,
                            suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                color: password == false
                                    ? Color(0xff009b99)
                                    : Color(0xff7f8c99),
                                onPressed: () {
                                  setState(() {
                                    password = !password;
                                  });
                                })),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN IN",
                            style: GoogleFonts.montserrat(
                                fontSize: 11.78,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Color(0xff009b99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.64),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: "Don't have an acoount? ",
                                style: GoogleFonts.montserrat(
                                  fontSize: 11.78,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                children: [
                              TextSpan(
                                  text: "Create one. ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11.78,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff242643),
                                  )),
                            ])),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
