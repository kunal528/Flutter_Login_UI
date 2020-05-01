import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 89,
                ),
                Center(
                  child: Text("Sign in",
                      style: GoogleFonts.roboto(
                        fontSize: 32,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 137,
                ),
                TextFormField(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      fillColor: Colors.black.withOpacity(0.4),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "Username",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(2)),
                      fillColor: Colors.black.withOpacity(0.4),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 180,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                    ),
                    color: Color(0xffF05522),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                ),
                SizedBox(
                height: 14,
                ),
                
                Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
