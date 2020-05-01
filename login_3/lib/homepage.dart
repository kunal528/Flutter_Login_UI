import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.16), BlendMode.darken))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 450,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            "SIGN UP WITH",
                            style: GoogleFonts.alegreyaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset("assets/fb.png"),
                            Image.asset("assets/Twitter.png"),
                            Image.asset("assets/G+.png")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "Already have an account?",
                    style: GoogleFonts.alegreyaSans(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.alegreyaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
