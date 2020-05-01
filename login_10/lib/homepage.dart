import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              image: AssetImage("assets/bg.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.76), BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text("SIGN IN",
                      style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                SizedBox(
                  height: 141,
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/email.svg",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/unlock.svg",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                        child: TextFormField(
                      obscureText: true,
                      style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffccccd0),
                        )),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffccccd0)),
                    )
                  ],
                ),
                SizedBox(
                  height: 79,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
