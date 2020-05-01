import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 430,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.darken))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 280,
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
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              checked = false;
                            });
                          },
                          padding: EdgeInsets.zero,
                          splashColor: Colors.transparent,
                          child: Text(
                            "CUSTOMER",
                            style: TextStyle(
                                fontFamily: "SFUIText",
                                color: checked == false
                                    ? Color(0xff293036)
                                    : Color(0xff696e72),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: 4,
                          width: 40,
                          decoration: BoxDecoration(
                              color: checked == false
                                  ? Color(0xff293036)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              checked = true;
                            });
                          },
                          padding: EdgeInsets.zero,
                          splashColor: Colors.transparent,
                          child: Text(
                            "PROVIDER",
                            style: TextStyle(
                                fontFamily: "SFUIText",
                                color: checked == true
                                    ? Color(0xff293036)
                                    : Color(0xff696e72),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: 4,
                          width: 40,
                          decoration: BoxDecoration(
                              color: checked == true
                                  ? Color(0xff293036)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                  color: Color(0xff293036),
                  height: 56,
                  minWidth: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff293036),
                    ),
                  ),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                  color: Colors.white,
                  height: 56,
                  minWidth: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
