import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(
                        Color(0xff262628).withOpacity(0.6), BlendMode.darken))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 450,
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
                  height: 29,
                ),
                Text(
                  "Continue with",
                  style: TextStyle(
                    fontFamily: "SFUIText",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF78500),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: SvgPicture.asset("assets/fb.svg"),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: SvgPicture.asset("assets/Twitter.svg"),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: SvgPicture.asset("assets/Google.svg"),
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 89,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text("Email",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
