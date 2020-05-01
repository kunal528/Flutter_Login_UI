import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            image: AssetImage("assets/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 91),
                      child: ClipPath(
                        clipper: ClipPath1(),
                        child: Container(
                          height: 276,
                          width: 176,
                          color: Color(0xff1bbfc6),
                        ),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 83,
                    ),
                    Center(
                      child: ClipPath(
                        clipper: ClipPath1(),
                        child: Container(
                          height: 276,
                          width: 176,
                          child: Image.asset(
                            "assets/profile.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Welcome back Kunal!",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Please login to continue.",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    TextFormField(
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                          hintText: "codedecoders@gmail.com",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: Color(0xffe0e0e0),
                          ),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Color(0xffe0e0e0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                          hintText: "• • • • • • • • •",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: Color(0xffe0e0e0),
                          ),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Color(0xffe0e0e0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          )),
                    ),
                    SizedBox(
                    height: 30,
                    ),
                    SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(onPressed: (){},child: Text("SIGN IN",style: GoogleFonts.montserrat(
                      fontSize: 11.78,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    color: Color(0xff1bbfc6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    ),
                    ),
                    SizedBox(
                    height: 25,
                    ),
                    Center(
                      child: RichText(text: TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.montserrat(
                          fontSize: 11.78,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                        children: [
                          TextSpan(
                        text: "Create one.",
                        style: GoogleFonts.montserrat(
                          fontSize: 11.78,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ))
                        ]
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var oneThirdHeight = size.height / 3;

    final path = Path()
      ..lineTo(0, oneThirdHeight)
      ..lineTo(0, oneThirdHeight * 2)
      ..quadraticBezierTo(0, (oneThirdHeight * 2) + 37, 20, size.width + 57)
      ..lineTo(size.width / 2, size.height)
      ..quadraticBezierTo(size.width + 30, (oneThirdHeight * 2) + 37,
          size.width - 10, oneThirdHeight * 2)
      ..lineTo(size.width, (oneThirdHeight * 2) + 25)
      ..lineTo(size.width, oneThirdHeight - 20)
      ..quadraticBezierTo(size.width, oneThirdHeight - 35, size.height / 2 + 20,
          size.width / 2 - 40)
      ..lineTo(size.width / 2, 0)
      ..quadraticBezierTo(0, oneThirdHeight - 40, 0, oneThirdHeight - 30)
      ..lineTo(0, oneThirdHeight)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
