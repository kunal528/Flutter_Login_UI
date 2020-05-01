import 'package:flutter/material.dart';

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
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Color(0xff4B1F4D).withOpacity(0.1), BlendMode.color))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Positioned(
              child: ClipPath(
                clipper: DiagonalPathClipperOne(),
                child: Container(
                  color: Color(0xffC94B1A),
                ),
              ),
            ),
            Positioned(
              child: ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  color: Color(0xffA13C15),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 61,
                          width: 55,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/f.png"),
                                  fit: BoxFit.fill),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff4B1F4D),
                                    offset: Offset(14, -14))
                              ]),
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello!",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Fashion gallery for you",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 430,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        color: Color(0xffC94B1A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                    SizedBox(
                    height: 16,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/Path.png"),
                            SizedBox(
                            width: 11,
                            ),
                            Text(
                              " Connect with Facebook",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        color: Color(0xff2672CB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                    height: 17,
                    ),
                    Text("Don’t have acccount? Sign up",style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
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

class DiagonalPathClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 224)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DiagonalPathClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - 190)
      ..lineTo(0, size.height - 300)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
