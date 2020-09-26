import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );
    return MaterialApp(
      title: 'IOT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textRatio = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.44,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.05),
                    child: Container(
                      height: height * 0.1,
                      width: width,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Our Product",
                              style: TextStyle(
                                  fontFamily: "Mon-SemiBold",
                                  fontSize: textRatio * 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ImageIcon(
                              AssetImage(
                                'assets/musical-sign-of-two-dots.png',
                              ),
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.02),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your choice",
                        style: TextStyle(
                          fontFamily: "Mon-Regular",
                          fontSize: textRatio * 27,
                          color: Color(0xff717478),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: 20),
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffcdcdd0),
                            offset: Offset(
                              0.0,
                              1.0,
                            ), //(x,y)
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      child: Container(
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xffcdcdd0),
                              ),
                              labelStyle: TextStyle(
                                fontFamily: "Mon-Regular",
                                fontSize: textRatio * 15,
                                color: Color(0xffcdcdd0),
                              ),
                              labelText: "Search Product"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              height: height * 0.56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.052,
                        ),
                        Text(
                          "Top Light",
                          style: TextStyle(
                            fontFamily: "Mon-SemiBold",
                            fontSize: textRatio * 20,
                            color: Color(0xffb7b6bb),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "Delivery Time",
                          style: TextStyle(
                            fontFamily: "Mon-SemiBold",
                            fontSize: textRatio * 14,
                            color: Color(0xffdedae4),
                          ),
                        ),
                        SizedBox(
                          height: width * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.12),
                            child: Text(
                              "15:30",
                              style: TextStyle(
                                fontFamily: "Mon-SemiBold",
                                fontSize: textRatio * 16,
                                color: Color(0xff484b51),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Text(
                          "Our contact",
                          style: TextStyle(
                            fontFamily: "Mon-SemiBold",
                            fontSize: textRatio * 16,
                            color: Color(0xffdedae4),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.054,
                              width: height * 0.054,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(height * 0.020)),
                                color: Color(0xff00c6a0),
                              ),
                              child: Icon(
                                CupertinoIcons.phone_solid,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.024,
                            ),
                            Container(
                              height: height * 0.054,
                              width: height * 0.054,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(height * 0.020)),
                                color: Color(0xfff9a304),
                              ),
                              child: Icon(
                                CupertinoIcons.location_solid,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(
                            fontFamily: "Mon-SemiBold",
                            fontSize: textRatio * 16,
                            color: Color(0xffdedae4),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Container(
                          height: height * 0.05,
                          width: height * 0.13,
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff669fff),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/half-moon.png",
                                color: Colors.white,
                                scale: 2.5,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "cold",
                                style: TextStyle(
                                  fontFamily: "Mon-SemiBold",
                                  fontSize: textRatio * 13,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.05,
                          width: height * 0.13,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xfff9a304),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/clouds-and-sun.png",
                                color: Colors.white,
                                scale: 2.5,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "warm",
                                style: TextStyle(
                                  fontFamily: "Mon-SemiBold",
                                  fontSize: textRatio * 13,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.5,
                    height: height * 0.56,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: Color(0xfffff5e9),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Container(
                          height: height * 0.16,
                          width: height * 0.16,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/light1.jpeg"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.16,
                          width: height * 0.16,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/light2.jpeg"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.16,
                          width: height * 0.16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/light3.jpeg"),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
