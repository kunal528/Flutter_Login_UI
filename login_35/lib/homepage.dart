import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Color(0xff262628).withOpacity(0.4), BlendMode.darken))),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 39),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 61,
                        ),
                        Center(
                          child: Container(
                            height: 103,
                            width: 103,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/Avatar.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 107,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Username",
                            style: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              color: Color(0xffc6ccd1),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            hintText: "Kunal Jain",
                            hintStyle: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4a4a4a),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4a4a4a),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              color: Color(0xffc6ccd1),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            hintText: "CodeDecoders@gmail.com",
                            hintStyle: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4a4a4a),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4a4a4a),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              color: Color(0xffc6ccd1),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xffefefef),
                            )),
                            hintText: "• • • • • • • •",
                            hintStyle: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4a4a4a),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4a4a4a),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: check,
                              onChanged: (bool x) {
                                setState(() {
                                  check = !check;
                                });
                              },
                              activeColor: Color(0xfff05522),
                              checkColor: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: "I agree to the",
                                    style: TextStyle(
                                      fontFamily: "SFUIDiplay",
                                      fontSize: 13,
                                      color: Color(0xff9b9b9b),
                                    ),
                                    children: [
                                  TextSpan(
                                    text: " Terms and Conditions.",
                                    style: TextStyle(
                                      fontFamily: "SFUIDiplay",
                                      fontSize: 13,
                                      color: Color(0xfff05522),
                                    ),
                                  )
                                ]))
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Color(0xff262628),
                          minWidth: double.infinity,
                          height: 60,
                          elevation: 0,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
