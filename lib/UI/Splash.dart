import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gitson/UI/LogIn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LogIn()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 250,
            child: Container(
                height: 400,
                alignment: const Alignment(0.5, 0.2),
                child: Lottie.asset(
                  "assets/images/animation.json",
                )),
          ),
          Positioned(
              top: 630,
              left: 150,
              child: Text(
                "Gitson",
                textScaleFactor: 1.5,
                style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.purple),
              ))
        ],
      ),
    );
  }
}
