import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bg.png"), fit: BoxFit.fitHeight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Code\nDecoders",
                  style: GoogleFonts.montserrat(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                Text("|",
                    style: GoogleFonts.montserrat(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w200)),
                Text(
                  "Login UI",
                  style:
                      GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 400,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Color(0xff061420),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Center(
              child: Text(
                "By continuing,you agree to our Terms and",
                style: TextStyle(
                    fontFamily: "SFUIText",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Center(
              child: Text(
                "Conditions.",
                style: TextStyle(
                    fontFamily: "SFUIText",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
