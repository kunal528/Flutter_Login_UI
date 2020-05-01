import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 249,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Color(0xff0b0b0b).withOpacity(0.6), BlendMode.darken))),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Code\nDecoders",
                          style: GoogleFonts.montserrat(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                        ),
                        Text("|",
                            style: GoogleFonts.montserrat(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w200)),
                        Text(
                          "Login \nUI",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 58,
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/email.svg",
                          height: 20, width: 20),
                      SizedBox(
                        width: 17,
                      ),
                      Expanded(
                          child: TextFormField(
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
                              color: Color(0xffccccd0)),
                        ),
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffccccd0)),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/unlock.svg",
                          height: 24, width: 24),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                          child: TextFormField(
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
                              color: Color(0xffccccd0)),
                        ),
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffccccd0)),
                        obscureText: true,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 177,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Social Login",
                            style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_forward,color: Colors.white,),
                        height: 64,
                        minWidth: 64,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        color: Color(0xfff78500),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
