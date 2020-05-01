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
                  Colors.black.withOpacity(0.4), BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 68,
                  ),
                  Text(
                    "Welcome Back,\nKunal Jain!",
                    style: TextStyle(
                      fontFamily: "SFUIText",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 230,
                  ),
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 104,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Color(0xfff5f9f6),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  hintText: "Please enter your password",
                                  hintStyle: TextStyle(
                                    fontFamily: "SFUIText",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff696e72),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1bbdc4),
                              ),
                            )),
                            SizedBox(
                              height: 33,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 56,
                          width: 120,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff293036),
                              ),
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        SizedBox(
                          height: 56,
                          width: 120,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontFamily: "SFUIText",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Color(0xff1bbdc4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(padding: EdgeInsets.only(top: 290),
                child: CircleAvatar(
                  child: Image.asset("assets/profile.png"),
                  radius: 80,
                  backgroundColor: Colors.transparent,
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
