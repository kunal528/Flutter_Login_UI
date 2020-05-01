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
                  fit: BoxFit.fitHeight)),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 330,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Code\nDecoders",
                      style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "|",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Login UI",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                height: 30,
                ),
                SizedBox(
                height: 50,
                width: 293,
                child: Image.asset("assets/facebook.png",fit: BoxFit.fill,),
                ),
                SizedBox(
                height: 10,
                ),
                
                SizedBox(
                height: 50,
                width: 275,
                child: Image.asset("assets/twitter.png",fit: BoxFit.fill,),
                ),
                SizedBox(
                height: 10,
                ),
                
                SizedBox(
                height: 50,
                width: 260,
                child: Image.asset("assets/gmail.png",fit: BoxFit.fill,),
                ),
                SizedBox(
                height: 5,
                ),
                Center(
                  child: Text("By sign in,you agree with our",style: GoogleFonts.alegreyaSans(
                    fontSize: 14,
                    color: Colors.white,
                  ),),
                ),
                Center(
                  child: Text("Terms and Conditions.",style: GoogleFonts.alegreyaSans(
                    fontSize: 14,
                    color: Colors.white,
                  ),),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
