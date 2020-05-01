import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
              clipper: Clip(),
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/bg.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter)),
              )),
          ClipPath(
              clipper: Clip(),
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff6563A4).withOpacity(0.2),
                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              )),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 160,
                  ),
                  Center(
                      child: Container(
                    height: 99,
                    width: 99,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffC471F5),
                          Color(0xffFA71CD),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(child: SvgPicture.asset("assets/Heart.svg")),
                  )),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Heart Connect",
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF50057),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Username",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffC6CCD1),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      hintText: "Patrícia Ribeiro",
                      hintStyle: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff293036),
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff293036),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffC6CCD1),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffC6CCD1),
                      )),
                      hintText: "**** ****",
                      hintStyle: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff293036),
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff293036),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "FORGOT PASSWORD?",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF50057),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient:  LinearGradient(
                        colors: [
                          Color(0xffC471F5),
                          Color(0xffFA71CD),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        
                        ),
                  ),
                  SizedBox(
                  height: 16,
                  ),
                  Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF50057),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height / 2;
    var path = new Path()
      ..lineTo(0, size.height - 100)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
