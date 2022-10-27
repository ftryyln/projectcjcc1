import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF46AD4C),
      body: Column(
        children: [
          //menampung banyak widget vertical
          Expanded(child: Center(child: Image.asset("assets/logo_tk.png"))),
          Image.asset(
            "assets/awan.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      );
    });
  }
}
