
import 'package:flutter/material.dart';
import 'package:invoicegenerator/screens/userscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "user",
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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
