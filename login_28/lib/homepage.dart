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
        image: AssetImage("assets/bg.png"),
        fit: BoxFit.fitHeight,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            Center(
              child: Text(
                "2021 is almost here (is it?)",
                style: TextStyle(
                  fontFamily: "SFUIText",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff696e72),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "Last Stop Coffee",
                style: TextStyle(
                  fontFamily: "SFUIText",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4e4f53),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 4,
              width: 48,
              decoration: BoxDecoration(
                  color: Color(0xff515151),
                  borderRadius: BorderRadius.circular(2)),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Order online, don't wait in line",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff696e72),
                )),
            Text("Collect tokens, get free coffee.",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff696e72),
                )),
            SizedBox(
              height: 403,
            ),
            SizedBox(
              height: 32,
              width: 124,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "Sign in",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xff433938),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)
                ),
              ),
            ),
              SizedBox(
              height: 16,
              ),
              RichText(text: TextSpan(text: "Don't have an account? ",style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff696e72),
              ),
              children: [
                 TextSpan(text: "Sign up!",style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff433938),
              ),)
              ]
              ),

              )
          ],
        ),
      ),
    );
  }
}
