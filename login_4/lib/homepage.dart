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
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 65,
              ),
              Center(
                child: Text(
                  "Featness",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 264,
              ),
              Image.asset("assets/hello.png"),
              SizedBox(
                height: 33,
              ),
              SizedBox(
                height: 59,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Login with Facebook",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              SizedBox(
              height: 16,
              ),
              
              SizedBox(
                height: 59,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Login with Email",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.white.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
