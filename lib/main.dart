import 'dart:async';

import 'package:flutter/material.dart';
import 'package:invoicegenerator/screens/userscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Splashscreen(),
        "user": (context) => Userscreen(),
      },
    ),
  );
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'user');
    });
    Timer.periodic(Duration(milliseconds: 300), (timer) {
      if (i < 100) {
        setState(() {
          i++;
        });
      }
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff3f3f3f),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage:AssetImage('assets/logo.png'),radius: 150,),
              SizedBox(
                height: 30,
              ),
              CircularProgressIndicator(color: Color(0xff000000),
                backgroundColor: Color(0xffbebebe),
                value: i / 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "$i%",
                style: TextStyle(color: Color(0xffffffff), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
