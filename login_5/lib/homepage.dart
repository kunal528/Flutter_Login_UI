import 'package:flutter/material.dart';

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
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.72), BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 92,
              ),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "If you don't have an account please",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                "create new account.",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 47,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA6AEBC),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontFamily: "LucidaGrande",
                            fontSize: 16,
                            color: Color(0xff0A1F44),
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            fillColor: Color(0xfff1f2f4),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: "CodeDecoders@gmail.com",
                            hintStyle: TextStyle(
                              fontFamily: "LucidaGrande",
                              fontSize: 16,
                              color: Color(0xff0A1F44),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA6AEBC),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            fontFamily: "LucidaGrande",
                            fontSize: 16,
                            color: Color(0xff0A1F44),
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            fillColor: Color(0xfff1f2f4),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: "••••••",
                            hintStyle: TextStyle(
                              fontFamily: "LucidaGrande",
                              fontSize: 16,
                              color: Color(0xff0A1F44),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Forgot your password?",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0A1f44),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  fontFamily: "LucidaGrande",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                            elevation: 0,
                            color: Color(0xff189ab4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      children: [
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 14,
                          color: Color(0xff189ab4),
                          fontWeight: FontWeight.w500),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
