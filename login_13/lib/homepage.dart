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
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: ClipPath1(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 3.7 / 10,
                child: Image.asset('assets/bg.png'),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 130),
                      child: Center(
                          child: Container(
                        height: 107,
                        width: 107,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffbec2ce),
                              offset: Offset(0, 10),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text("C",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 72,
                                color: Color(0xff6133fe),
                              )),
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Code Decoders",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        wordSpacing: 2,
                        color: Color(0xffa6aebc),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Username",
                          labelStyle: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffa6aebc),
                          )),
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffa6aebc),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffe1e4e8),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          labelText: "Password",
                          labelStyle: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffa6aebc),
                          )),
                      obscureText: true,
                      style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffa6aebc),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        color: Color(0xff6133fe),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              child: Divider(
                            color: Color(0xffefefef),
                            thickness: 1.2,
                          )),
                          Text(
                            "  OR  ",
                            style: TextStyle(
                                fontFamily: "SFUIDisplay",
                                fontSize: 14,
                                backgroundColor: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                          Expanded(
                              child: Divider(
                            color: Color(0xffefefef),
                            thickness: 1.2,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/fb.png"),
                        Image.asset("assets/Twitter.png"),
                        Image.asset("assets/G+.png")
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text("Don't have an account?",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xff707070),
                          )),
                    ),
                    Center(
                      child: Text("Sign up",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Color(0xff6133fe),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0, size.height - 100)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 100)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
