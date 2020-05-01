import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checked = false;
  final _formkey = GlobalKey<FormState>();
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
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                    ),
                    Center(
                      child: Container(
                        height: 103,
                        width: 103,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Avatar.png"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.black,
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9B9B9B),
                          )),
                      style: TextStyle(
                        fontFamily: "SFUIDisplay",
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xffD0D0D0),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9B9B9B),
                          )),
                      style: TextStyle(
                        fontFamily: "SFUIDisplay",
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontFamily: "SFUIDisplay",
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9B9B9B),
                          )),
                      style: TextStyle(
                        fontFamily: "SFUIDisplay",
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff9B9B9B),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: <Widget>[
                        CircularCheckBox(
                          value: checked,
                          onChanged: (bool x) {
                            setState(() {
                              checked = !checked;
                            });
                          },
                          activeColor: Color(0xffF05522),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: "SFUIDisplay",
                                  fontSize: 13,
                                  color: Color(0xff9B9B9B),
                                ),
                                children: [
                              TextSpan(
                                text: "Terms and Conditions",
                                style: TextStyle(
                                  fontFamily: "SFUIDisplay",
                                  fontSize: 13,
                                  color: Color(0xffF05522),
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontFamily: "SFUIText",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xffF05522),
                      height: 50,
                      minWidth: double.infinity,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 13,
                              color: Color(0xff9B9B9B),
                            ),
                            children: [
                          TextSpan(
                            text: "Sign in",
                            style: TextStyle(
                              fontFamily: "SFUIDisplay",
                              fontSize: 13,
                              color: Color(0xffF05522),
                            ),
                          )
                        ])),
                  ],
                )),
          ),
          Positioned(
            top: 40,
            left: 10,
              child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
