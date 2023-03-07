import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            height: 240,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Breakfast",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bread,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500),
                          //textAlign: TextAlign.start,
                        ),
                        Text(
                          "Peanut butter,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500),
                          //textAlign: TextAlign.start,
                        ),
                        Text(
                          "Apple",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500),
                          //textAlign: TextAlign.start,
                        ),
                      ]),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "525",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "kcal",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -20,
            left: -10,
            child: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.white24,
            ),
          ),
          Positioned(
              top: -15,
              left: 5.0,
              child: Image(
                image: AssetImage("assets/images/bread.png"),
              )),
        ]),
      ),
    );
  }
}
