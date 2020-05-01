import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8);
  List<String> image = [
    "assets/bg.png",
        "assets/bg1.png",
        "assets/bg2.png",
        "assets/bg3.png",
        "assets/bg4.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Directionality(
                textDirection: TextDirection.ltr,
                child: SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: PageView(
                    controller: controller,
                    children: List.generate(
                        image.length,
                        (int i) => Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(image[i]),
                                      fit: BoxFit.fitHeight),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            )),
                  ),
                )),
            SizedBox(
              height: 29,
            ),
            Center(
              child: Text(
                "Time is value.",
                style: TextStyle(
                  fontFamily: "SFUIText",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff293036),
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "Order online,don't wait in line.",
              style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff696e72),
              ),
            ),
            Text(
              "Collect tokens, get free coffee.",
              style: TextStyle(
                fontFamily: "SFUIText",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff696e72),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: ExpandingDotsEffect(
                  expansionFactor: 4,
                  activeDotColor: Color(0xff1bbdc4),
                  dotColor: Color(0xffccccd0),
                  dotHeight: 4,
                  dotWidth: 4),
            ),
            SizedBox(
              height: 49,
            ),
            Row(
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
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
                                SizedBox(
                  height: 56,
                  width: 120,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontFamily: "SFUIText",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xff1bbdc4),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
